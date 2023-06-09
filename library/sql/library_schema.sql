DROP SCHEMA IF EXISTS library;
CREATE SCHEMA library;
USE library;


---
--- Tables
---

--- Table 'school'
CREATE TABLE school (
  school_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  school_name VARCHAR(45) NOT NULL,
  city VARCHAR(45) NOT NULL,
  street VARCHAR(45) NOT NULL,
  street_number INT UNSIGNED NOT NULL,
  postal_code INT UNSIGNED NOT NULL,
  email VARCHAR(45) NOT NULL,
  principal_lastname VARCHAR(45) NOT NULL,
  principal_firstname VARCHAR(45) NOT NULL,
  school_admin_lastname VARCHAR(45) NOT NULL,
  school_admin_firstname VARCHAR(45) NOT NULL,
  pending_flag ENUM('pending'),
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CHECK(postal_code > 9999 and postal_code < 100000),
  PRIMARY KEY  (school_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--- Table 'school_phone'
CREATE TABLE school_phone(
  phone VARCHAR(10) NOT NULL,
  school_id INT UNSIGNED NOT NULL,
  phone_flag ENUM('pending'),
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (phone,school_id),
  KEY fk_school_id (school_id), 
  CONSTRAINT fk_school_id FOREIGN KEY (school_id) REFERENCES school (school_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Table 'lib_user'
CREATE TABLE lib_user(
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_pwd VARCHAR(10) NOT NULL,
    user_name VARCHAR(45) NOT NULL,
    school_id INT UNSIGNED NOT NULL,
    role_name ENUM('student', 'teacher', 'admin', 'super_admin') NOT NULL,
    user_email VARCHAR(45) NOT NULL,
    user_firstname VARCHAR(45) NOT NULL, 
    user_lastname VARCHAR(45) NOT NULL,
    user_date_of_birth DATE NOT NULL, 
    user_pending_flag ENUM('waiting'),
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id),
    KEY fk_user_school_id (school_id),
    CONSTRAINT fk_user_school_id FOREIGN KEY (school_id) REFERENCES school (school_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8; 

-- Table 'book'
CREATE TABLE book (
  book_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(45) NOT NULL,
  publisher VARCHAR(45) NOT NULL,
  pages INT UNSIGNED NOT NULL,
  ISBN BIGINT UNSIGNED NOT NULL,
  summary VARCHAR(400),
  number_of_books INT UNSIGNED NOT NULL, 	
  number_of_available_books INT UNSIGNED NOT NULL,
  book_image VARCHAR(256) NOT NULL, 
  book_language VARCHAR(45),
  school_id INT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (book_id),
  KEY fk_book_school_id (school_id),
  CONSTRAINT fk_book_school_id FOREIGN KEY (school_id) REFERENCES school (school_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Table book_status
CREATE TABLE book_status (
  book_status_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  book_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  status ENUM('borrowed','reserved','queue') NOT NULL,
  request_date DATE,
  approval_date DATE,
  return_date DATE,
  PRIMARY KEY (book_status_id),
  KEY fk_book_status_book_id (book_id),
  KEY fk_book_status_user_id (user_id),
  CONSTRAINT fk_book_status_book_id FOREIGN KEY (book_id) REFERENCES book (book_id) ON DELETE CASCADE,
  CONSTRAINT fk_book_status_user_id FOREIGN KEY (user_id) REFERENCES lib_user (user_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Table 'book_keywords'
CREATE TABLE book_keywords (
  keywords  VARCHAR(50) NOT NULL,
  book_id INT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (keywords,book_id),
  KEY fk_book_keywords_book_id (book_id),
  CONSTRAINT fk_book_keywords_book_id FOREIGN KEY(book_id) REFERENCES book (book_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Table 'book_theme'
CREATE TABLE book_theme (
  theme ENUM('Fiction', 'Non-fiction','Dystopia','Gothic','Tragedy','Science Fiction', 'Science','Drama', 'Adventure','Mystery', 'Romance','War', 'Classic','Thriller', 'Horror', 'Fantasy', 'Biography', 'Autobiography', 'History', 'Poetry', 'Comics', 'Cookbooks', 'Travel', 'Religion', 'Self-help', 'Art', 'Music','Coming of Age', 'Sports', 'Humor', 'Children','Reference') NOT NULL,
  book_id INT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (theme, book_id),
  KEY fk_book_theme_book_id (book_id),
  CONSTRAINT fk_book_theme_book_id FOREIGN KEY(book_id) REFERENCES book (book_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Table 'book_author'
CREATE TABLE book_author (
	author  VARCHAR(50) NOT NULL,
	book_id INT UNSIGNED NOT NULL,
	last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (author,book_id),
  KEY fk_book_author_book_id (book_id),
	CONSTRAINT fk_book_author_book_id FOREIGN KEY(book_id) REFERENCES book (book_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Table 'review'
CREATE TABLE review (
  user_id INT UNSIGNED NOT NULL,
  book_id INT UNSIGNED NOT NULL,
  review_text VARCHAR(400),
  rev_date DATE NULL,
  rating ENUM('1', '2', '3', '4', '5') NOT NULL, 
  review_pending_flag ENUM('pending'),
  PRIMARY KEY (user_id,book_id),
  KEY fk_review_user_id (user_id),
  CONSTRAINT fk_review_user_id FOREIGN KEY (user_id) REFERENCES lib_user (user_id) ON DELETE CASCADE,
  KEY fk_review_book_id (book_id),
  CONSTRAINT fk_review_book_id FOREIGN KEY (book_id) REFERENCES book (book_id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


---
--- Events
---

---Every day the db needs to check whether a queue deadline has expired
DELIMITER $$
CREATE EVENT delete_from_queue
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    -- Delete old queued reservations
    DELETE FROM book_status
    WHERE status = 'queue'
    AND request_date < DATE_SUB(NOW(), INTERVAL 1 WEEK);
END $$
DELIMITER ;

---Every day the db needs to check whether a reservation deadline has expired
DELIMITER $$

CREATE EVENT delete_old_reservations
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    -- Declare variables
    DECLARE done INT DEFAULT FALSE;
    DECLARE book_id INT;
    DECLARE function_result BOOLEAN;

    -- Cursor to fetch book_id values
    DECLARE cur CURSOR FOR
        SELECT book_id
        FROM book_status
        WHERE status = 'reserved'
        AND request_date < DATE_SUB(NOW(), INTERVAL 1 WEEK);

    -- Declare handlers
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Delete old reservations
    DELETE FROM book_status
    WHERE status = 'reserved'
    AND request_date < DATE_SUB(NOW(), INTERVAL 1 WEEK);

    -- Open cursor
    OPEN cur;

    -- Fetch book_id values and call function/procedure
    read_loop: LOOP
        FETCH cur INTO book_id;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Call your function with book_id as a parameter
        SET function_result = check_book_update(book_id);

        IF function_result = 0 THEN
            -- Call your procedure with book_id as a parameter
            CALL increase_available_books(book_id);
        END IF;
    END LOOP;

    -- Close cursor
    CLOSE cur;
END$$

DELIMITER ;


---
--- Views
---

---All schools with their names
CREATE VIEW all_schools AS
SELECT school_id, school_name
FROM school;

-- School_application
CREATE VIEW school_applications AS
SELECT s.school_id, s.school_name, s.city, s.street, s.postal_code, s.email,
       s.principal_lastname, s.principal_firstname, s.school_admin_lastname, s.school_admin_firstname,
       u.user_id, u.user_name, u.user_email, u.user_firstname, u.user_lastname, u.user_date_of_birth
FROM school s
JOIN lib_user u ON s.school_id = u.school_id
WHERE s.pending_flag = 'pending' AND u.user_pending_flag = 'waiting' AND u.role_name = 'admin';

--- User applications
CREATE VIEW new_user_application AS
SELECT *
FROM lib_user
WHERE user_pending_flag = 'waiting';


---
--- Procedures
---

DELIMITER //

CREATE PROCEDURE decrease_available_books(IN _book_id INT)
BEGIN
    UPDATE book
    SET number_of_available_books = number_of_available_books - 1
    WHERE book_id = _book_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE increase_available_books(IN _book_id INT)
BEGIN
    UPDATE book
    SET number_of_available_books = number_of_available_books + 1
    WHERE book_id = _book_id;
END //

DELIMITER ;
---
--- Triggers
---


DELIMITER $$
CREATE TRIGGER check_borrow_limit
BEFORE INSERT ON book_status
FOR EACH ROW
BEGIN
    DECLARE borrow_count INT;
    DECLARE queue_count INT;
    DECLARE reserved_count INT;
    IF (NEW.status = 'reserved' OR NEW.status = 'borrowed') THEN
      IF NEW.user_id IN (SELECT user_id FROM lib_user WHERE role_name='student') THEN
          SET borrow_count = (
              SELECT COUNT(*) AS count
              FROM book_status
              WHERE user_id = NEW.user_id
                AND status IN ('borrowed')
                AND approval_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
          );
          SET reserved_count = (
              SELECT COUNT(*) AS count
              FROM book_status
              WHERE user_id = NEW.user_id
                AND status IN ('reserved')
                AND request_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
          );

          IF (borrow_count+reserved_count) >= 2 THEN
              SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You have exceeded the limit on the number of books you can borrow or reserve in the last seven days.';
          END IF;
      ELSEIF NEW.user_id IN (SELECT user_id FROM lib_user WHERE role_name='teacher' OR role_name='admin') THEN
          SET borrow_count = (
              SELECT COUNT(*) AS count
              FROM book_status
              WHERE user_id = NEW.user_id
                AND status IN ('borrowed')
                AND approval_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
          );
          SET reserved_count = (
              SELECT COUNT(*) AS count
              FROM book_status
              WHERE user_id = NEW.user_id
                AND status IN ('reserved')
                AND request_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
          );
          IF (borrow_count+reserved_count) >= 1 THEN
              SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You have exceeded the limit on the number of books you can borrow or reserve in the last seven days.';
          END IF;
      END IF;
    END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER check_queue_limit
BEFORE INSERT ON book_status
FOR EACH ROW
BEGIN
    DECLARE borrow_count INT;
    DECLARE queue_count INT;
    DECLARE reserved_count INT;
    IF (NEW.status = 'queue') THEN
      IF NEW.user_id IN (SELECT user_id FROM lib_user WHERE role_name='student') THEN
          SET queue_count = (
              SELECT COUNT(*) AS count
              FROM book_status
              WHERE user_id = NEW.user_id
                AND status IN ('queue')
                AND request_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
          );

          IF (queue_count) >= 2 THEN
              SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You have exceeded the limit on the number of books you can borrow or reserve in the last seven days.';
          END IF;
      ELSEIF NEW.user_id IN (SELECT user_id FROM lib_user WHERE role_name='teacher' OR role_name='admin') THEN
          SET queue_count = (
              SELECT COUNT(*) AS count
              FROM book_status
              WHERE user_id = NEW.user_id
                AND status IN ('queue')
                AND request_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
          );
          IF (queue_count) >= 1 THEN
              SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You have exceeded the limit on the number of books you can borrow or reserve in the last seven days.';
          END IF;
      END IF;
    END IF;
END$$
DELIMITER ;

-- Phones must have 10 digits
DELIMITER //
CREATE TRIGGER phone_length_trigger BEFORE INSERT ON school_phone
FOR EACH ROW
BEGIN
  IF CHAR_LENGTH(NEW.phone) != 10 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Phone number must be 10 digits.';
  END IF;
END //
DELIMITER ;

-- Passwords must have 4 digits
DELIMITER //
CREATE TRIGGER user_pwd_format_trigger BEFORE INSERT ON lib_user
FOR EACH ROW
BEGIN
  IF CHAR_LENGTH(NEW.user_pwd) != 4 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Phone number must be 10 digits.';
  END IF;
END //
DELIMITER ;

--Trigger για ηλικία καθηγητών:
DELIMITER //

CREATE TRIGGER check_teacher_admin_age 
BEFORE INSERT ON lib_user 
FOR EACH ROW 
BEGIN
  IF (NEW.role_name = 'teacher' OR NEW.role_name = 'admin') AND 
     (TIMESTAMPDIFF(YEAR, NEW.user_date_of_birth, CURDATE()) < 23) THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Teachers and admins must be at least 23 years old.';
  END IF;
END//

DELIMITER ;

--Trigger για ηλικία μαθητών:
DELIMITER //

CREATE TRIGGER check_student_age 
BEFORE INSERT ON lib_user 
FOR EACH ROW 
BEGIN
  IF (NEW.role_name = 'student') AND 
     (TIMESTAMPDIFF(YEAR, NEW.user_date_of_birth, CURDATE()) < 7) THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Teachers and admins must be at least 7 years old.';
  END IF;
END//

DELIMITER ;

-- Ενας διευθυντής μπορεί να υπάρχει μόνο σε 1 σχολείο
DELIMITER //

CREATE TRIGGER unique_principal_trigger BEFORE INSERT ON school
FOR EACH ROW
BEGIN
  DECLARE principal_count INT;
  
  SET principal_count = (
    SELECT COUNT(*) FROM school
    WHERE principal_lastname = NEW.principal_lastname
    AND principal_firstname = NEW.principal_firstname
  );
  
  IF principal_count > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The same principal cannot be assigned to multiple schools.';
  END IF;
END //

DELIMITER ;

-- Δεν γίνεται εισαγωγή 2ου super admin
DELIMITER //

CREATE TRIGGER trigger_super_admin_check
BEFORE INSERT ON lib_user
FOR EACH ROW
BEGIN
  DECLARE super_admin_count INT;
  SET super_admin_count = (
    SELECT COUNT(*)
    FROM lib_user
    WHERE role_name = 'super_admin'
  );
  IF super_admin_count > 0 AND NEW.role_name = 'super_admin' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Only one super admin is allowed.';
  END IF;
END //

DELIMITER ;

-- Δεν γίνεται εισαγωγή 2ου admin για ένα σχολείο
DELIMITER //

CREATE TRIGGER trigger_school_admin_check
BEFORE INSERT ON lib_user
FOR EACH ROW
BEGIN
  DECLARE admin_count INT;
  SET admin_count = (
    SELECT COUNT(*)
    FROM lib_user
    WHERE school_id = NEW.school_id AND role_name = 'admin'
  );
  IF admin_count > 0 AND NEW.role_name = 'admin' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A school can have only one admin.';
  END IF;
END //

DELIMITER ;


---
---Indexes
---

CREATE INDEX idx_book_status_status ON book_status (status);
CREATE INDEX idx_book_theme_theme ON book_theme (theme);
CREATE INDEX idx_book_author_author ON book_author (author);
CREATE INDEX idx_book_status_user_id ON book_status (user_id);
CREATE INDEX idx_book_status_approval_date ON book_status (approval_date);
CREATE INDEX idx_lib_user_name ON lib_user (user_firstname, user_lastname);
CREATE INDEX idx_book_title ON book (title);


---
--- Functions
---

--- Function ωστε μια κράτηση να περνάει αυτόματα σε επίπεδο 'reserved' οταν ενα βιβλίο αποκτήσει διαθεσιμο αντιτυπο και 
--- εφόσον ο χρήστης που εχει αιτηθεί κράτηση δεν υπερβαίνει τα όρια του δανεισμού. Σε αυτή την περίπτωση επιλέγεται ο επόμενος στην σειρά 
--- προτεραιότητας χρηστης.
--- Ο χρήστης ενημερώνεται για αυτή την αλλαγή απο την καρτέλα MyBooks στο προφιλ του.

DELIMITER $$
CREATE FUNCTION check_book_update(_book_id INT) RETURNS BOOLEAN
BEGIN
    DECLARE borrow_count INT;
    DECLARE reserved_count INT;
    DECLARE _user_id INT UNSIGNED;
    DECLARE done INT DEFAULT FALSE;
    DECLARE update_occurred BOOLEAN DEFAULT FALSE;
    
    DECLARE cur CURSOR FOR
      SELECT user_id AS _user_id FROM book_status 
      WHERE book_id = _book_id AND status = 'queue' 
      ORDER BY request_date;
      
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
      
    IF (SELECT number_of_available_books FROM book WHERE book_id = _book_id) = 0 THEN 

        OPEN cur;
        
        read_loop: LOOP
          FETCH cur INTO _user_id;
          IF done THEN
            LEAVE read_loop;
          END IF;
          
          SET borrow_count = (
            SELECT COUNT(*) AS count
            FROM book_status
            WHERE user_id = _user_id
              AND status IN ('borrowed')
              AND approval_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
          );
          
          SET reserved_count = (
            SELECT COUNT(*) AS count
            FROM book_status
            WHERE user_id = _user_id
              AND status IN ('reserved')
              AND request_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
              LIMIT 1
          );
          
          IF _user_id IN (SELECT user_id FROM lib_user WHERE role_name='student') THEN
              IF borrow_count + reserved_count < 2 THEN
                UPDATE book_status 
                SET status = 'reserved', request_date = CURRENT_DATE 
                WHERE book_id = _book_id AND status = 'queue' AND user_id = _user_id
                ORDER BY request_date;
                SET done = TRUE;
                SET update_occurred = TRUE;
              END IF;
          ELSEIF _user_id IN (SELECT user_id FROM lib_user WHERE role_name='teacher' OR role_name = 'admin') THEN
            IF borrow_count + reserved_count < 1 THEN
                UPDATE book_status 
                SET status = 'reserved', request_date = CURRENT_DATE 
                WHERE book_id = _book_id AND status = 'queue' AND user_id = _user_id
                ORDER BY request_date;
                SET done = TRUE;
                SET update_occurred = TRUE;
              END IF;
          END IF;
        END LOOP;
        
        CLOSE cur;
    END IF;
    
    RETURN update_occurred;
END$$

DELIMITER ;


DELIMITER $$
CREATE FUNCTION check_book_update_after_deny(_book_id INT) RETURNS BOOLEAN
BEGIN
    DECLARE borrow_count INT;
    DECLARE reserved_count INT;
    DECLARE _user_id INT UNSIGNED;
    DECLARE done INT DEFAULT FALSE;
    DECLARE update_occurred BOOLEAN DEFAULT FALSE;
    
    DECLARE cur CURSOR FOR
      SELECT user_id AS _user_id FROM book_status 
      WHERE book_id = _book_id AND status = 'queue' 
      ORDER BY request_date;
      
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
      
    IF (SELECT number_of_available_books FROM book WHERE book_id = _book_id) > 0 THEN 

        OPEN cur;
        
        read_loop: LOOP
          FETCH cur INTO _user_id;
          IF done THEN
            LEAVE read_loop;
          END IF;
          
          SET borrow_count = (
            SELECT COUNT(*) AS count
            FROM book_status
            WHERE user_id = _user_id
              AND status IN ('borrowed')
              AND approval_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
          );
          
          SET reserved_count = (
            SELECT COUNT(*) AS count
            FROM book_status
            WHERE user_id = _user_id
              AND status IN ('reserved')
              AND request_date >= DATE_SUB(NOW(), INTERVAL 7 DAY)
              LIMIT 1
          );
          
          IF _user_id IN (SELECT user_id FROM lib_user WHERE role_name='student') THEN
              IF borrow_count + reserved_count < 2 THEN
                UPDATE book_status 
                SET status = 'reserved', request_date = CURRENT_DATE 
                WHERE book_id = _book_id AND status = 'queue' AND user_id = _user_id
                ORDER BY request_date;
                SET done = TRUE;
                SET update_occurred = TRUE;
              END IF;
          ELSEIF _user_id IN (SELECT user_id FROM lib_user WHERE role_name='teacher' OR role_name = 'admin') THEN
            IF borrow_count + reserved_count < 1 THEN
                UPDATE book_status 
                SET status = 'reserved', request_date = CURRENT_DATE 
                WHERE book_id = _book_id AND status = 'queue' AND user_id = _user_id
                ORDER BY request_date;
                SET done = TRUE;
                SET update_occurred = TRUE;
              END IF;
          END IF;
        END LOOP;
        
        CLOSE cur;
    END IF;
    
    RETURN update_occurred;
END$$

DELIMITER ;
