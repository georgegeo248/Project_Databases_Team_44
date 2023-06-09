--- shcools
INSERT INTO school (school_id, school_name, city, street,street_number, postal_code, email, principal_lastname, principal_firstname, school_admin_lastname, school_admin_firstname)
VALUES
  (1, 'Maplewood Elementary School', 'Springfield', 'Oak Avenue',12, 12345, 'maplewood@gmail.com', 'Johnson', 'Emily', 'Smith', 'Jennifer'),
  (2, 'Willowbrook High School', 'Harrisonburg', 'Willow Street',30, 54321, 'willowbrook@gmail.com', 'Anderson', 'Michael', 'Brown', 'Jessica'),
  (3, 'Cedar Ridge Middle School', 'Wilmington', 'Cedar Lane', 50,67890, 'cedarridge@gmail.com', 'Davis', 'Sarah', 'Wilson', 'David');

---- phones
INSERT INTO school_phone (phone, school_id) VALUES
  (3572212345, 1),
  (3572298765, 1);
INSERT INTO school_phone (phone, school_id) VALUES
  (3572245678, 2);
INSERT INTO school_phone (phone, school_id) VALUES
  (3572278912, 3),
  (3572232165, 3);

--- superadmin
INSERT INTO lib_user (user_pwd, user_name, school_id, role_name, user_email, user_firstname, user_lastname, user_date_of_birth)
VALUES (1111, 'manosneo', 1, 'super_admin', 'manosneof@gmail.com', 'manos', 'neof', '1924-01-01');
--- 1 admin for every shcool 
INSERT INTO lib_user (user_pwd, user_name, school_id, role_name, user_email, user_firstname, user_lastname, user_date_of_birth)
VALUES (1234, 'george123', 1, 'admin', 'georgesmith@gmail.com', 'George', 'Smith', '1985-07-10'),
       (5678, 'emily456', 2, 'admin', 'emilyjones@gmail.com', 'Emily', 'Jones', '1982-11-18'),
       (9876, 'jason789', 3, 'admin', 'jasonbrown@gmail.com', 'Jason', 'Brown', '1988-03-25');
--- teachers - 3 for every school
INSERT INTO lib_user (user_pwd, user_name, school_id, role_name, user_email, user_firstname, user_lastname, user_date_of_birth)
VALUES
  (1234, 'johnsmith', 1, 'teacher', 'johnsmith@gmail.com', 'John', 'Smith', '1985-07-12'),
  (9876, 'jennifermiller', 1, 'teacher', 'jennifermiller@gmail.com', 'Jennifer', 'Miller', '1978-03-30'),
  (2468, 'mike1980', 1, 'teacher', 'mike1980@gmail.com', 'Michael', 'Johnson', '1980-11-05'),
  (1357, 'amandabrown', 2, 'teacher', 'amandabrown@gmail.com', 'Amanda', 'Brown', '1992-02-18'),
  (5678, 'davidthompson', 2, 'teacher', 'davidthompson@gmail.com', 'David', 'Thompson', '1972-09-10'),
  (7890, 'sarahjones', 2, 'teacher', 'sarahjones@gmail.com', 'Sarah', 'Jones', '1988-12-01'),
  (5432, 'robertgreen', 3, 'teacher', 'robertgreen@gmail.com', 'Robert', 'Green', '1983-06-22'),
  (2109, 'emilytaylor', 3, 'teacher', 'emilytaylor@gmail.com', 'Emily', 'Taylor', '1995-04-14'),
  (8765, 'chrisharris', 3, 'teacher', 'chrisharris@gmail.com', 'Chris', 'Harris', '1975-08-07'),
  (4321, 'jessicawright', 1, 'teacher', 'jessicawright@gmail.com', 'Jessica', 'Wright', '1987-01-23');

--students - 5 for every school
INSERT INTO lib_user (user_pwd, user_name, school_id, role_name, user_email, user_firstname, user_lastname, user_date_of_birth)
VALUES
  (4321, 'ethan456', 1, 'student', 'ethanbrown@example.com', 'Ethan', 'Brown', '2003-06-10'),
  (5678, 'mia789', 1, 'student', 'miaharris@example.com', 'Mia', 'Harris', '2004-09-05'),
  (8765, 'jacob234', 1, 'student', 'jacobsmith@example.com', 'Jacob', 'Smith', '2003-03-17'),
  (7890, 'ava567', 1, 'student', 'avajones@example.com', 'Ava', 'Jones', '2002-12-08'),
  (9012, 'sophia890', 1, 'student', 'sophiawilson@example.com', 'Sophia', 'Wilson', '2004-11-25'),
  (3456, 'noah321', 2, 'student', 'noahdavis@example.com', 'Noah', 'Davis', '2005-07-02'),
  (2345, 'olivia654', 2, 'student', 'oliviamartin@example.com', 'Olivia', 'Martin', '2003-02-13'),
  (1234, 'liam987', 2, 'student', 'liamthompson@example.com', 'Liam', 'Thompson', '2004-04-30'),
  (4321, 'emma123', 2, 'student', 'emmalopez@example.com', 'Emma', 'Lopez', '2002-09-22'),
  (5678, 'william456', 2, 'student', 'williamjohnson@example.com', 'William', 'Johnson', '2003-12-14'),
  (8765, 'ava789', 3, 'student', 'avamartinez@example.com', 'Ava', 'Martinez', '2004-06-07'),
  (7890, 'mason234', 3, 'student', 'masonhall@example.com', 'Mason', 'Hall', '2002-11-19'),
  (9012, 'sophia567', 3, 'student', 'sophiamiller@example.com', 'Sophia', 'Miller', '2003-08-12'),
  (3456, 'james890', 3, 'student', 'jamesrivera@example.com', 'James', 'Rivera', '2004-02-27'),
  (2345, 'olivia123', 3, 'student', 'oliviacooper@example.com', 'Olivia', 'Cooper', '2002-10-15'),
  (1234, 'liam456', 1, 'student', 'liamroberts@example.com', 'Liam', 'Roberts', '2003-01-28'),
  (4321, 'ava789', 1, 'student', 'avahill@example.com', 'Ava', 'Hill', '2004-04-15'),
  (5678, 'michael234', 1, 'student', 'michaelwood@example.com', 'Michael', 'Wood', '2002-12-07'),
  (8765, 'sophia567', 1, 'student', 'sophialong@example.com', 'Sophia', 'Long', '2003-09-20'),
  (9012, 'oliver123', 2, 'student', 'oliverwright@example.com', 'Oliver', 'Wright', '2003-05-10'),
  (3456, 'charlotte456', 2, 'student', 'charlottelee@example.com', 'Charlotte', 'Lee', '2002-11-15'),
  (2345, 'lucas789', 2, 'student', 'lucasbaker@example.com', 'Lucas', 'Baker', '2004-02-22'),
  (1234, 'harper234', 2, 'student', 'harperjackson@example.com', 'Harper', 'Jackson', '2003-07-31'),
  (4321, 'amelia567', 2, 'student', 'ameliarobinson@example.com', 'Amelia', 'Robinson', '2002-12-18'),
  (5678, 'oliver123', 3, 'student', 'oliverwright@example.com', 'Oliver', 'Wright', '2003-05-10'),
  (8765, 'charlotte456', 3, 'student', 'charlottelee@example.com', 'Charlotte', 'Lee', '2002-11-15'),
  (7890, 'lucas789', 3, 'student', 'lucasbaker@example.com', 'Lucas', 'Baker', '2004-02-22'),
  (9012, 'harper234', 3, 'student', 'harperjackson@example.com', 'Harper', 'Jackson', '2003-07-31'),
  (3456, 'amelia567', 3, 'student', 'ameliarobinson@example.com', 'Amelia', 'Robinson', '2002-12-18');

---- books for school 1 
INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Pride and Prejudice','Stellar Books', 400, 1234567890, 'A classic romance novel exploring themes of societal norms, love, and prejudice in 19th-century England.', 1, 1, 'https://covers.openlibrary.org/b/id/12645114-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Catcher in the Rye', 'BlueSky Publications', 320, 2345678901, 'A coming-of-age novel narrated by an angsty teenager who questions societal conventions and struggles with his own identity.', 3, 3, 'https://covers.openlibrary.org/b/id/6297651-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Hobbit', 'Golden Quill Press', 350, 3456789012, 'An epic fantasy adventure following a hobbit''s journey to reclaim a stolen treasure, encountering magical creatures and dangers along the way.', 5, 5, 'https://covers.openlibrary.org/b/id/12003329-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('1984', 'Crimson Ink Publishing', 250, 9876543210, 'A dystopian novel depicting a totalitarian society where individualism is suppressed and critical thought is controlled.', 2, 2, 'https://covers.openlibrary.org/b/id/12054527-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Alchemist', 'HarperOne', 208, 9780062315007, 'A philosophical novel about a young Andalusian shepherd who embarks on a journey to find his personal legend.', 1, 1, 'https://covers.openlibrary.org/b/id/8314135-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Great Expectations', 'Penguin Classics', 544, 9780141439563, 'A coming-of-age novel following the life of Pip, an orphan, as he navigates his way through the social classes of Victorian England.', 1, 1, 'https://covers.openlibrary.org/b/id/13029793-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('To the Lighthouse', 'Harvest Books', 209, 9780156907392, 'A modernist novel that explores the lives and relationships of the Ramsay family and their guests on a trip to the Isle of Skye.', 1, 1, 'https://covers.openlibrary.org/b/id/8291454-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Moby-Dick', 'Harper Perennial', 896, 9780062085661, 'An epic tale of Captain Ahab''s obsessive quest for revenge against the great white whale.', 1, 1, 'https://covers.openlibrary.org/b/id/110556-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Picture of Dorian Gray', 'Penguin Classics', 254, 9780141439570, 'A Gothic novel about a young man named Dorian Gray, who remains eternally youthful while a portrait of him ages and bears the scars of his immoral actions.', 1, 1, 'https://covers.openlibrary.org/b/id/14314591-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Frankenstein', 'Penguin Classics', 352, 9780141439471, 'A science fiction novel exploring the ethical implications of creating artificial life, as Victor Frankenstein brings a creature to life with disastrous consequences.', 1, 1, 'https://covers.openlibrary.org/b/id/109033-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('A Game of Thrones', 'Bantam Books', 694, 9780553593716, 'The first book in the epic fantasy series ''A Song of Ice and Fire'' that follows the power struggles among noble families in the Seven Kingdoms.', 1, 1, 'https://covers.openlibrary.org/b/id/9269942-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Fault in Our Stars', 'Dutton Books', 313, 9780525478812, 'A young adult novel about two teenagers, Hazel and Gus, who meet and fall in love while dealing with the challenges of living with cancer.', 1, 1, 'https://covers.openlibrary.org/b/id/7890579-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Gone Girl', 'Crown Publishing Group', 432, 9780307588364, 'A psychological thriller about a husband, Nick, and his wife, Amy, whose marriage takes a dark turn when Amy goes missing under suspicious circumstances.', 1, 1, 'https://covers.openlibrary.org/b/id/11568078-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Chronicles of Narnia', 'HarperCollins', 767, 9780066238500, 'A series of fantasy novels that transport readers to the magical world of Narnia, where animals talk, mythical creatures abound, and battles between good and evil unfold.', 1, 1, 'https://covers.openlibrary.org/b/id/13236788-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Da Vinci Code', 'Doubleday', 454, 9780385504201, 'A thriller that follows symbologist Robert Langdon as he unravels a complex mystery involving secret societies, hidden messages, and the search for the Holy Grail.', 1, 1, 'https://covers.openlibrary.org/b/id/10520498-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Kite Runner', 'Riverhead Books', 371, 9781573222457, 'A novel about the friendship between Amir, a privileged boy, and Hassan, the son of his father''s servant, set against the backdrop of Afghanistan''s tumultuous history.', 1, 1, 'https://covers.openlibrary.org/b/id/12728870-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Book Thief', 'Knopf', 550, 9780375831003, 'Set during World War II, the story follows Liesel Meminger, a young girl who finds solace in books and develops a secret habit of stealing them.', 1, 1, 'https://covers.openlibrary.org/b/id/11478077-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Secret Life of Bees', 'Penguin Books', 336, 9780142001745, 'A coming-of-age novel that explores race, female empowerment, and the power of love as a young girl named Lily Owens finds refuge with a group of beekeeping sisters.', 1, 1, 'https://covers.openlibrary.org/b/id/8066208-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Road', 'Vintage Books', 287, 9780307387899, 'A post-apocalyptic novel that follows a father and his young son as they journey through a desolate landscape, facing danger and despair in search of a better life.', 1, 1, 'https://covers.openlibrary.org/b/id/9557220-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Bell Jar', 'Harper & Row', 288, 9780060174903, 'A semi-autobiographical novel about Esther Greenwood, a talented young woman who struggles with mental health issues and societal expectations in 1950s America.', 1, 1, 'https://covers.openlibrary.org/b/id/13282079-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Help', 'Amy Einhorn Books', 451, 9780399155345, 'Set in the 1960s, the novel explores the complex relationships between African American maids and their white employers in Jackson, Mississippi.', 1, 1, 'https://covers.openlibrary.org/b/id/8589568-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Hunger Games', 'Scholastic Press', 374, 9780439023481, 'The first book in a dystopian trilogy where teenagers from different districts are forced to participate in a televised fight to the death as a form of government control.', 1, 1, 'https://covers.openlibrary.org/b/id/10322358-M.jpg', 'English', 1);
---
---
---
---
---
---
---- books for school 2 
INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Da Vinci Code', 'Sapphire Books', 450, 1234567890, 'A thrilling mystery novel that combines art, history, and religion, following a symbologist in his quest to uncover a hidden secret.', 3, 3, 'https://covers.openlibrary.org/b/id/10520498-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Kite Runner', 'Amber Publishing', 400, 9876543210, 'A powerful story of friendship, betrayal, and redemption set against the backdrop of Afghanistan''s turbulent history.', 5, 5, 'https://covers.openlibrary.org/b/id/12728870-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Book Thief', 'Moonstone Press', 350, 2345678901, 'Narrated by Death, this extraordinary novel tells the story of a young girl living in Nazi Germany who finds solace in books and words.', 2, 2, 'https://covers.openlibrary.org/b/id/11478077-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Secret Life of Bees', 'Lavender Publishing', 320, 3456789012, 'Set in 1960s South Carolina, this poignant novel explores themes of family, race, and female empowerment as a young girl seeks answers about her mother.', 4, 4, 'https://covers.openlibrary.org/b/id/8066208-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Road', 'Harbor Books', 300, 4567890123, 'A post-apocalyptic tale of a father and son''s journey through a desolate landscape, exploring themes of survival, love, and hope.', 3, 3, 'https://covers.openlibrary.org/b/id/9557220-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Bell Jar', 'Willow Publishing', 380, 5678901234, 'Semi-autobiographical, this novel follows a young woman''s descent into mental illness and her struggle for identity in a society that places expectations and limitations on women.', 5, 5, 'https://covers.openlibrary.org/b/id/13282079-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Help', 'Quillfire Books', 420, 6789012345, 'Set in 1960s Mississippi, this novel portrays the lives of American maids and their relationships with white families, challenging racial boundaries and societal norms.', 2, 2, 'https://covers.openlibrary.org/b/id/10544717-M.jpg', 'English', 2);
--- from chat
INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("Alice's Adventures in Wonderland", "Macmillan Publishers", 192, 9781509861621, "A whimsical tale of a young girl named Alice who falls down a rabbit hole and encounters strange and fantastical creatures in a topsy-turvy world.", 3, 3, 'https://covers.openlibrary.org/b/OLID/OL31754751M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("Frankenstein; or, The Modern Prometheus", "Lackington, Hughes, Harding, Mavor & Jones", 280, 9780199537150, "A classic Gothic novel that explores the themes of creation, identity, and the consequences of playing god through the story of Victor Frankenstein and his creature.", 2, 2, 'https://covers.openlibrary.org/b/OLID/OL7092075M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The Wonderful Wizard of Oz", "George M. Hill Company", 154, 9781442495926, "A beloved children's fantasy novel that follows Dorothy, a young girl from Kansas, as she journeys through the magical Land of Oz with her friends: the Scarecrow, the Tin Woodman, and the Cowardly Lion.", 4, 4, 'https://covers.openlibrary.org/b/OLID/OL7170815M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The Lost World", "Hodder & Stoughton", 320, 9780192828585, "A thrilling adventure novel that follows an expedition to a remote South American plateau where prehistoric creatures still roam.", 3, 3, 'https://covers.openlibrary.org/b/OLID/OL22885694M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("Dracula", "Archibald Constable and Company", 418, 9780192833862, "A Gothic horror novel that introduces the iconic vampire Count Dracula and explores themes of blood, desire, and the battle between good and evil.", 4, 4, 'https://covers.openlibrary.org/b/OLID/OL7075358M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("Brave New World", "Chatto & Windus", 311, 9780099518471, "A dystopian novel set in a futuristic society that explores themes of technology, social control, and the cost of happiness.", 1, 1, 'https://covers.openlibrary.org/b/OLID/OL6504102M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("Nineteen Eighty-Four", "Secker & Warburg", 328, 9780141036144, "A dystopian novel set in a totalitarian society where individualism is suppressed and government surveillance is pervasive.", 2, 2, 'https://covers.openlibrary.org/b/OLID/OL21733390M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The War of the Worlds", "Heinemann", 288, 9780141441030, "A science fiction novel that depicts a Martian invasion of Earth and explores themes of imperialism, evolution, and humanity's resilience.", 3, 3, 'https://covers.openlibrary.org/b/OLID/OL9236546M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The Time Machine", "William Heinemann", 118, 9781509827702, "A science fiction novella that follows the Time Traveller as he journeys to the future and encounters the descendants of humanity.", 4, 4, 'https://covers.openlibrary.org/b/OLID/OL8000344M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The Poison Belt", "Hodder & Stoughton", 200, 9781434446936, "A science fiction novel that continues the story of Professor Challenger and his companions as they face a new global disaster.", 1, 1, 'https://covers.openlibrary.org/b/OLID/OL14034942M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The Invisible Man", "C. Arthur Pearson", 146, 9780141441023, "A science fiction novel that tells the story of a scientist who discovers the secret of invisibility and the consequences that follow.", 2, 2, 'https://covers.openlibrary.org/b/OLID/OL24269941M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("Vingt mille lieues sous les mers", "Pierre-Jules Hetzel", 528, 9782011556878, "A classic science fiction novel by Jules Verne that follows the adventures of Captain Nemo and his submarine, the Nautilus.", 3, 3, 'https://covers.openlibrary.org/b/OLID/OL24245739M-M.jpg', "French", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("Flatland", "Seeley & Co.", 100, 9780140435317, "A satirical novella that takes place in a two-dimensional world and explores the concept of dimensions and societal hierarchy.", 4, 4, 'https://covers.openlibrary.org/b/OLID/OL23189553M-M.jpg', "English", 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The Secret Agent", "Methuen & Co.", 272, 9780141441580, "A novel that delves into the world of espionage and terrorism in late 19th-century London.", 3, 3, 'https://covers.openlibrary.org/b/OLID/OL2640257M-M.jpg', "English", 2);

---
---
---
---
--- books for school 3
INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("Harry Potter and the Sorcerer's Stone", 'Whimsical Publishing', 320, 1234567890, 'A captivating tale of a young boy who discovers he is a wizard and embarks on a magical journey at Hogwarts School of Witchcraft and Wizardry.', 3, 3, 'https://covers.openlibrary.org/b/id/12903634-M.jpg', 'English', 3);

INSERT INTO book ( title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The Hunger Games", 'Eagle Books', 400, 9876543210, 'In a dystopian future, teenagers are forced to participate in a televised fight to the death, testing their survival skills and challenging the oppressive regime.', 5, 5, 'https://covers.openlibrary.org/b/id/12646540-M.jpg', 'English', 3);

INSERT INTO book ( title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The Girl with the Dragon Tattoo", 'Mysterious Press', 480, 2345678901, 'A gripping crime novel that follows a journalist and a talented hacker as they investigate a decades-old disappearance and unravel a web of secrets and violence.', 2, 2, 'https://covers.openlibrary.org/b/id/10655947-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ("The Chronicles of Narnia", 'Enchanted Books', 600, 6789012345, 'A beloved fantasy series that transports readers into a magical world filled with talking animals, mythical creatures, and epic adventures.', 2, 2, 'https://covers.openlibrary.org/b/id/13236788-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Pride and Prejudice', 'Enchanting Publications', 400, 1234567890, 'A classic romance novel that explores the societal norms and expectations of 19th-century England, as Elizabeth Bennet navigates love, pride, and prejudice.', 3, 3, 'https://covers.openlibrary.org/b/id/12645114-M.jpg', 'English', 3);

INSERT INTO book ( title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Catcher in the Rye', 'Rebel Books', 224, 9876543210, 'A coming-of-age novel that follows the disillusioned teenager Holden Caulfield as he navigates the complexities of adulthood and society.', 2, 2, 'https://covers.openlibrary.org/b/id/6297651-M.jpg', 'English', 3);

INSERT INTO book ( title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Hobbit', 'Mystical Press', 320, 2345678901, 'An enchanting adventure that takes readers to the magical world of Middle-earth, following Bilbo Baggins as he embarks on a quest to reclaim a stolen treasure.', 4, 4, 'https://covers.openlibrary.org/b/id/12003329-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Brave New World', 'Futuristic Publishing', 352, 3456789012, 'A dystopian novel set in a future where society is engineered for stability and conformity, challenging the notions of individuality, freedom, and the pursuit of happiness.', 3, 3, 'https://covers.openlibrary.org/b/id/12992919-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Lord of the Rings', 'Mythical Books', 1200, 4567890123, 'An epic fantasy trilogy that follows the journey of Frodo Baggins and the Fellowship of the Ring as they strive to destroy the One Ring and defeat the Dark Lord Sauron.', 5, 5, 'https://covers.openlibrary.org/b/id/13911921-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Odyssey', 'Adventurous Press', 416, 5678901234, 'An ancient Greek epic poem that tells the story of Odysseus ten-year journey back home after the Trojan War, encountering mythical creatures and facing numerous challenges along the way.', 2, 2, 'https://covers.openlibrary.org/b/id/13081298-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('A Game of Thrones', 'Epic Books', 800, 9876543210, 'The first book in the epic fantasy series "A Song of Ice and Fire," where noble families and political intrigue clash in a battle for the Iron Throne.', 5, 5, 'https://covers.openlibrary.org/b/id/9269942-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Fault in Our Stars', 'Starlit Publications', 320, 2345678901, 'A heart-wrenching love story between two teenagers with cancer who embark on a journey of love, friendship, and finding meaning in the face of mortality.', 3, 3, 'https://covers.openlibrary.org/b/id/7890579-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Gone Girl', 'Mystery House', 400, 3456789012, 'A psychological thriller that explores the disappearance of a wife and the dark secrets that emerge as her husband becomes the prime suspect.', 5, 5, 'https://covers.openlibrary.org/b/id/11568078-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Emma', 'Stellar Books', 350, 762940815, 'A novel by Jane Austen, portraying the life and matchmaking endeavors of Emma Woodhouse in a small English village.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL13573615M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Wuthering Heights', 'Stellar Books', 320, 238941657, 'A Gothic novel by Emily Bronte, telling the passionate and tragic love story of Heathcliff and Catherine Earnshaw on the Yorkshire moors.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL38586477M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Sense and Sensibility', 'Stellar Books', 380, 846291735, 'A novel by Jane Austen, following the Dashwood sisters as they navigate love, loss, and societal expectations in Regency-era England.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL14041582M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Northanger Abbey', 'Stellar Books', 300, 653128479, 'A coming-of-age novel by Jane Austen, featuring Catherine Morland as she experiences love, friendship, and the mysteries of Northanger Abbey.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL36684152M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Ethan Frome', 'Stellar Books', 200, 129567834, 'A novel by Edith Wharton, set in rural New England and exploring themes of love, duty, and the consequences of repressed emotions.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL7215847M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Uncle Toms Cabin', 'Stellar Books', 450, 459283716, 'An anti-slavery novel by Harriet Beecher Stowe, portraying the harsh realities of slavery in the United States and its impact on individuals.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL26244385M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Women in Love', 'Stellar Books', 400, 935827416, 'A novel by D.H. Lawrence, delving into the complex relationships and desires of the Brangwen sisters and their respective partners.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL14048584M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('This Side of Paradise', 'Stellar Books', 320, 874529361, 'A novel by F. Scott Fitzgerald, exploring the life and aspirations of Amory Blaine as he navigates love, success, and disillusionment in post-World War I America.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL7230180M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Heart of Darkness', 'Stellar Books', 200, 128465937, 'A novella by Joseph Conrad, delving into the dark journey of Charles Marlow as he travels up the Congo River and confronts the heart of human darkness.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL10277237M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Moonstone', 'Stellar Books', 400, 754612839, 'A mystery novel by Wilkie Collins, revolving around the theft of a valuable diamond and the subsequent investigation to uncover the truth.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL11424127M-M.jpg', 'English', 3);

---
---
---
--- EXTRA
--- SCHOOL 1
INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Bible', 'Stellar Books', 1000, 6931475208, 'A sacred text containing religious scriptures and teachings in various traditions, including Judaism and Christianity.', 5, 5, 'https://covers.openlibrary.org/b/OLID/OL39801870M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Adventures of Huckleberry Finn', 'Stellar Books', 350, 5192437860, 'A classic American novel by Mark Twain that follows the adventures of a young boy named Huckleberry Finn as he escapes from his abusive father and embarks on a journey down the Mississippi River.', 2, 2, 'https://covers.openlibrary.org/b/OLID/OL7062714M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Treasure Island', 'Stellar Books', 200, 2796450813, 'An adventure novel by Robert Louis Stevenson, featuring the story of Jim Hawkins and his encounters with pirates, buried treasure, and swashbuckling adventures.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL24195201M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Sense and Sensibility', 'Stellar Books', 320, 4917820365, 'A classic novel by Jane Austen, exploring the themes of love, marriage, and societal expectations through the lives of the Dashwood sisters.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL14041582M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('A Tale of Two Cities', 'Stellar Books', 450, 8319726450, 'A historical novel by Charles Dickens set in London and Paris before and during the French Revolution, depicting the struggles and contrasts between the two cities.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL46835117M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('A Christmas Carol', 'Stellar Books', 150, 5871039426, 'A beloved novella by Charles Dickens, telling the story of Ebenezer Scrooge and his transformation after being visited by the ghosts of Christmas past, present, and future.', 5, 5, 'https://covers.openlibrary.org/b/OLID/OL47311368M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Little Women', 'Stellar Books', 400, 9264350718, 'A classic novel by Louisa May Alcott, following the lives of the four March sisters as they navigate love, loss, and the transition to adulthood during the Civil War era.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL24620928M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Oliver Twist', 'Stellar Books', 280, 7609231485, 'A novel by Charles Dickens, depicting the hardships and adventures of an orphan named Oliver Twist as he navigates the grim streets of Victorian London.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL47307472M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Great Expectations', 'Stellar Books', 380, 3715928604, 'A novel by Charles Dickens, tracing the life of Pip as he rises from poverty to wealth and navigates the complexities of love, class, and identity in 19th-century England.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL45791004M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('El ingenioso hidalgo Don Quijote de la Mancha', 'Stellar Books', 500, 3679452180, 'A renowned novel by Miguel de Cervantes, narrating the adventures of Don Quixote, a delusional knight-errant, and his loyal squire Sancho Panza.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL6469521M-M.jpg', 'Spanish', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Adventures of Sherlock Holmes ', 'Stellar Books', 320, 8162945730, 'A collection of twelve detective stories featuring the famous detective Sherlock Holmes and his loyal friend Dr. John Watson, written by Sir Arthur Conan Doyle.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL24349267M-M.jpg', 'English', 1);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Wonderful Wizard of Oz', 'Stellar Books', 220, 4257891630, 'A beloved childrens novel by L. Frank Baum, following the adventures of Dorothy Gale and her friends as they journey through the magical Land of Oz.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL7170815M-M.jpg', 'English', 1);

--- SCHOOL 2
INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Adventures of Huckleberry Finn', 'Stellar Books', 350, 892634017, 'A classic American novel by Mark Twain that follows the adventures of a young boy named Huckleberry Finn as he escapes from his abusive father and embarks on a journey down the Mississippi River.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL7062714M-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Treasure Island', 'Stellar Books', 200, 761234590, 'An adventure novel by Robert Louis Stevenson, featuring the story of Jim Hawkins and his encounters with pirates, buried treasure, and swashbuckling adventures.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL24195201M-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Moby Dick', 'Stellar Books', 600, 123459876, 'A novel by Herman Melville, portraying the obsessive hunt for the great white whale, Moby Dick, and exploring themes of obsession, fate, and the nature of humanity.', 2, 2, 'https://covers.openlibrary.org/b/OLID/OL6984724M-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Robinson Crusoe', 'Stellar Books', 320, 135792468, 'A novel by Daniel Defoe, recounting the tale of Robinson Crusoe, a shipwreck survivor who spends years on a deserted island, facing challenges and reflecting on themes of survival, isolation, and faith.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL24144374M-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Call of the Wild', 'Stellar Books', 240, 987654321, 'A novel by Jack London, telling the story of Buck, a domesticated dog who is thrust into the harsh world of the Yukon during the Klondike Gold Rush and discovers his primal instincts.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL23283734M-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Harry Potter and the Philosophers Stone', 'Stellar Books', 320, 759318246, 'The first book in the Harry Potter series by J.K. Rowling, following the magical journey of Harry Potter as he discovers his true identity and begins his education at Hogwarts School of Witchcraft and Wizardry.', 5, 5, 'https://covers.openlibrary.org/b/OLID/OL22856696M-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Harry Potter and the Chamber of Secrets', 'Stellar Books', 400, 432157896, 'The second book in the Harry Potter series by J.K. Rowling, featuring Harry Potters second year at Hogwarts and his encounter with the mysterious Chamber of Secrets.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL26594474M-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Harry Potter and the Goblet of Fire', 'Stellar Books', 600, 567893214, 'The fourth book in the Harry Potter series by J.K. Rowling, where Harry Potter competes in the Triwizard Tournament and faces the rise of Lord Voldemort.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL25683482M-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Lion, the Witch and the Wardrobe', 'Stellar Books', 250, 321459876, 'The first book in The Chronicles of Narnia series by C.S. Lewis, taking readers to the magical land of Narnia where four siblings discover their destinies and help bring an end to the eternal winter enforced by the White Witch.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL7265111M-M.jpg', 'English', 2);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Northern Lights', 'Stellar Books', 320, 963258741, 'The first book in the His Dark Materials trilogy by Philip Pullman, following the adventures of Lyra Belacqua in a parallel world where she uncovers dark secrets and battles against powerful forces.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL9731031M-M.jpg', 'English', 2);


--- SCHOOL 3
INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Hamlet', 'Stellar Books', 200, 956241378, 'A tragedy by William Shakespeare, depicting the internal struggle and revenge of Prince Hamlet after his fathers murder, exploring themes of mortality, madness, and moral ambiguity.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL26587990M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Great Expectations', 'Stellar Books', 450, 832159467, 'A novel by Charles Dickens, following the life of Pip, an orphan who dreams of becoming a gentleman, and his encounters with a mysterious benefactor and the enigmatic Miss Havisham.', 5, 5, 'https://covers.openlibrary.org/b/OLID/OL45791004M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Great Gatsby', 'Stellar Books', 250, 498276135, 'A novel by F. Scott Fitzgerald, set in the Jazz Age of 1920s America, portraying the glittering yet empty lives of the wealthy and the ill-fated love story of Jay Gatsby and Daisy Buchanan.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL22570129M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Ὀδύσσεια (Odyssey)', 'Stellar Books', 500, 713824569, 'An epic poem attributed to Homer, telling the story of Odysseus and his perilous journey home after the Trojan War, encountering mythical creatures, gods, and facing numerous challenges.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL23305280M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Romeo and Juliet', 'Stellar Books', 150, 479123856, 'A tragedy by William Shakespeare, portraying the passionate love and tragic fate of Romeo and Juliet, two young star-crossed lovers from feuding families.', 5, 5, 'https://covers.openlibrary.org/b/OLID/OL26501367M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Macbeth', 'Stellar Books', 180, 614259837, 'A tragedy by William Shakespeare, delving into the consequences of ambition and the corrupting nature of power, as Macbeth and Lady Macbeth plot and scheme to fulfill their desires.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL25922468M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Last of the Mohicans', 'Stellar Books', 320, 935768412, 'A historical novel by James Fenimore Cooper, set during the French and Indian War, following the adventures of Hawkeye and his encounters with Native American tribes.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL7165874M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Tempest', 'Stellar Books', 200, 826451937, 'A play by William Shakespeare, centering around Prospero, the rightful Duke of Milan, who uses his magic to orchestrate a shipwreck and seek revenge on his enemies.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL16982543M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Merchant of Venice', 'Stellar Books', 220, 572913846, 'A play by William Shakespeare, exploring themes of justice, prejudice, and mercy, as the merchant Antonio borrows money from Shylock and faces a harrowing legal dispute.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL25398118M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Dracula', 'Stellar Books', 400, 375618429, 'A gothic horror novel by Bram Stoker, introducing the iconic vampire Count Dracula and the battle between him and a group of individuals led by Professor Abraham Van Helsing.', 5, 5, 'https://covers.openlibrary.org/b/OLID/OL7075358M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Princess and the Goblin', 'Stellar Books', 240, 528716934, 'A childrens fantasy novel by George MacDonald, following the adventures of a young princess and a young miner as they confront goblins and overcome challenges.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL7544575M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('Le avventure di Pinocchio', 'Stellar Books', 200, 912378645, 'A classic Italian childrens novel by Carlo Collodi, narrating the adventures of Pinocchio, a wooden puppet who aspires to become a real boy.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL27004449M-M.jpg', 'Italian', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Story of the Amulet', 'Stellar Books', 320, 498253617, 'A fantasy novel by E. Nesbit, featuring a group of children who go on magical adventures through time with the help of a mysterious amulet.', 3, 3, 'https://covers.openlibrary.org/b/OLID/OL17139068M-M.jpg', 'English', 3);

INSERT INTO book (title, publisher, pages, ISBN, summary, number_of_books, number_of_available_books, book_image, book_language, school_id)
VALUES ('The Marvelous Land of Oz', 'Stellar Books', 260, 357962481, 'A childrens novel by L. Frank Baum, continuing the adventures in the Land of Oz as a boy named Tip encounters new characters and faces unexpected challenges.', 4, 4, 'https://covers.openlibrary.org/b/OLID/OL7244470M-M.jpg', 'English', 3);

---
---
---
---
--- themes for books of school 1 and 2 and 3 
INSERT INTO book_theme (theme, book_id)
VALUES
    ('Fiction', 1),
    ('Drama', 1),
    ('Romance', 1),
    ('Coming of Age', 2),
    ('Fiction', 2),
    ('Adventure', 2),
    ('Adventure', 3),
    ('Fantasy', 3),
    ('Science Fiction', 3),
    ('Mystery', 4),
    ('Thriller', 4),
    ('Horror', 4),
    ('Adventure', 5),
    ('Fiction', 5),
    ('Classic', 5),
    ('Classic', 6),
    ('Drama', 6),
    ('Romance', 6),
    ('Mystery', 7),
    ('Thriller', 7),
    ('Horror', 7),
    ('Adventure', 8),
    ('Classic', 8),
    ('Biography', 8),
    ('Biography', 9),
    ('Fiction', 9),
    ('History', 9),
    ('Science Fiction', 10),
    ('Thriller', 10),
    ('Fantasy', 10),
    ('Fantasy', 11),
    ('Adventure', 11),
    ('Coming of Age', 11),
    ('Coming of Age', 12),
    ('Romance', 12),
    ('Mystery', 12),
    ('Mystery', 13),
    ('Thriller', 13),
    ('Horror', 13);
INSERT INTO book_theme (theme, book_id)
VALUES
    ('Fantasy', 14),
    ('Adventure', 14),
    ('Classic', 14),
    ('Mystery', 15),
    ('Adventure', 15),
    ('Fantasy', 15),
    ('Adventure', 16),
    ('Drama', 16),
    ('Coming of Age', 16),
    ('Mystery', 17),
    ('Drama', 17),
    ('Thriller', 17),
    ('Adventure', 18),
    ('Romance', 18),
    ('Drama', 18),
    ('Adventure', 19),
    ('Science Fiction', 19),
    ('Dystopia', 19),
    ('Classic', 20),
    ('Drama', 20),
    ('Coming of Age', 20),
    ('Drama', 21),
    ('Classic', 21),
    ('Dystopia', 22),
    ('Science Fiction', 22),
    ('Adventure', 22),
    ('Mystery', 23),
    ('Drama', 23),
    ('Thriller', 23),
    ('Adventure', 24),
    ('Drama', 24),
    ('Coming of Age', 24),
    ('Mystery', 25),
    ('Drama', 25),
    ('Thriller', 25),
    ('Adventure', 26),
    ('Romance', 26),
    ('Drama', 26),
    ('Adventure', 27),
    ('Science Fiction', 27),
    ('Dystopia', 27),
    ('Classic', 28),
    ('Drama', 28),
    ('Coming of Age', 28),
    ('Fantasy', 29),
    ('Adventure', 29),
    ('Classic', 29),
    ('Adventure', 30),
    ('Fantasy', 30),
    ('Children', 30),
    ('Classic', 31),
    ('Science Fiction', 31),
    ('Gothic', 31),
    ('Adventure', 32),
    ('Fantasy', 32),
    ('Children', 32),
    ('Adventure', 33),
    ('Science Fiction', 33),
    ('Gothic', 34),
    ('Horror', 34),
    ('Classic', 34),
    ('Dystopia', 35),
    ('Science Fiction', 35),
    ('Dystopia', 36),
    ('Science Fiction', 36),
    ('Science Fiction', 37);

INSERT INTO book_theme (theme, book_id)
VALUES
    ('Science Fiction', 38),
    ('Adventure', 38),
    ('Science Fiction', 39),
    ('Mystery', 39),
    ('Science Fiction', 40),
    ('Classic', 40),
    ('Adventure', 41),
    ('Fantasy', 41),
    ('Classic', 41),
    ('Science Fiction', 42),
    ('Science', 42),
    ('Adventure', 43),
    ('Classic', 43),
    ('Fantasy', 44),
    ('Adventure', 44),
    ('Children', 44),
    ('Adventure', 45),
    ('Dystopia', 45),
    ('Thriller', 46),
    ('Mystery', 46),
    ('Fantasy', 47),
    ('Adventure', 47),
    ('Children', 47),
    ('Romance', 48),
    ('Classic', 48),
    ('Adventure', 49),
    ('Fiction', 49),
    ('Classic', 49),
    ('Fantasy', 50),
    ('Adventure', 50),
    ('Children', 50),
    ('Dystopia', 51),
    ('Science Fiction', 51),
    ('Fantasy', 52),
    ('Adventure', 52),
    ('Classic', 53),
    ('Adventure', 53),
    ('Fantasy', 54),
    ('Adventure', 54),
    ('Coming of Age', 55),
    ('Romance', 55),
    ('Drama', 55),
    ('Mystery', 56),
    ('Thriller', 56),
    ('Romance', 57),
    ('Classic', 57),
    ('Drama', 57),
    ('Gothic', 58),
    ('Romance', 58),
    ('Classic', 58),
    ('Romance', 59),
    ('Drama', 59),
    ('Classic', 59),
    ('Gothic', 60),
    ('Romance', 60),
    ('Classic', 60);
INSERT INTO book_theme (theme, book_id)
VALUES
    ('Romance', 61),
    ('Classic', 61),
    ('Drama', 61),
    ('Classic', 62),
    ('Romance', 63),
    ('Drama', 63),
    ('Classic', 63),
    ('Romance', 64),
    ('Drama', 64),
    ('Classic', 64),
    ('Gothic', 65),
    ('Adventure', 65),
    ('Classic', 65),
    ('Mystery', 66),
    ('Adventure', 66),
    ('Classic', 66),
    ('Religion', 67),
    ('Classic', 67),
    ('Adventure', 68),
    ('Coming of Age', 68),
    ('Classic', 68),
    ('Adventure', 69),
    ('Children', 69),
    ('Classic', 69),
    ('Romance', 70),
    ('Drama', 70),
    ('Classic', 70),
    ('Classic', 71),
    ('Adventure', 71),
    ('Classic', 72),
    ('Fantasy', 72),
    ('Adventure', 72),
    ('Coming of Age', 73),
    ('Drama', 73),
    ('Classic', 73),
    ('Adventure', 74),
    ('Drama', 74),
    ('Classic', 74),
    ('Coming of Age', 75),
    ('Drama', 75),
    ('Classic', 75),
    ('Adventure', 76),
    ('Classic', 76),
    ('Adventure', 77),
    ('Mystery', 77),
    ('Classic', 77),
    ('Adventure', 78),
    ('Fantasy', 78),
    ('Children', 78),
    ('Adventure', 79),
    ('Children', 79),
    ('Classic', 79),
    ('Adventure', 80),
    ('Classic', 80),
    ('Adventure', 81),
    ('Classic', 81),
    ('Adventure', 82),
    ('Classic', 82),
    ('Adventure', 83),
    ('Classic', 83),
    ('Fantasy', 84),
    ('Adventure', 84),
    ('Children', 84),
    ('Fantasy', 85),
    ('Adventure', 85),
    ('Children', 85),
    ('Fantasy', 86),
    ('Adventure', 86),
    ('Children', 86),
    ('Fantasy', 87),
    ('Adventure', 87),
    ('Children', 87),
    ('Fantasy', 88),
    ('Adventure', 88),
    ('Children', 88),
    ('Classic', 89),
    ('Drama', 89),
    ('Tragedy', 89),
    ('Coming of Age', 90),
    ('Drama', 90),
    ('Classic', 90),
    ('Classic', 91),
    ('Drama', 91),
    ('Romance', 92),
    ('Classic', 92),
    ('Tragedy', 92),
    ('Romance', 93),
    ('Tragedy', 93),
    ('Classic', 93),
    ('Tragedy', 94),
    ('Drama', 94),
    ('Classic', 94),
    ('Adventure', 95),
    ('Classic', 95),
    ('Drama', 96),
    ('Romance', 96),
    ('Classic', 96),
    ('Drama', 97),
    ('Romance', 97),
    ('Classic', 97),
    ('Gothic', 98),
    ('Horror', 98),
    ('Classic', 98),
    ('Fantasy', 99),
    ('Adventure', 99),
    ('Children', 99),
    ('Adventure', 100),
    ('Children', 100),
    ('Fantasy', 100),
    ('Adventure', 101),
    ('Fantasy', 101),
    ('Children', 101),
    ('Adventure', 102),
    ('Fantasy', 102),
    ('Children', 102);
---
---
---
---

-- AUTHORS --> OK
--- authors for books of shcool 1 and 2
INSERT INTO book_author (author, book_id)
VALUES
  ('Jane Austen', 1),
  ('J.D. Salinger', 2),
  ('J.R.R. Tolkien', 3),
  ('George Orwell', 4),
  ('Paulo Coelho', 5),
  ('Charles Dickens', 6),
  ('Virginia Woolf', 7),
  ('Herman Melville', 8),
  ('Oscar Wilde', 9),
  ('Mary Shelley', 10),
  ('George R.R. Martin', 11),
  ('John Green', 12),
  ('Gillian Flynn', 13),
  ('C.S. Lewis', 14),
  ('Dan Brown', 15),
  ('Khaled Hosseini', 16),
  ('Markus Zusak', 17),
  ('Sue Monk Kidd', 18),
  ('Cormac McCarthy', 19),
  ('Sylvia Plath', 20),
  ('Kathryn Stockett', 21),
  ('Suzanne Collins', 22),
  ('Dan Brown', 23),
  ('Khaled Hosseini', 24),
  ('Markus Zusak', 25),
  ('Sue Monk Kidd', 26),
  ('Cormac McCarthy', 27),
  ('Sylvia Plath', 28),
  ('Kathryn Stockett', 29),
  ('Lewis Carroll', 30),
  ('Mary Shelley', 31),
  ('L. Frank Baum', 32),
  ('Arthur Conan Doyle', 33),
  ('Bram Stoker', 34),
  ('Aldous Huxley', 35),
  ('H.G. Wells', 36),
  ('H.G. Wells', 37);

-- Insert authors for each book
INSERT INTO book_author (author, book_id)
VALUES
  ('H.G. Wells', 38),
  ('Arthur Conan Doyle', 39),
  ('H.G. Wells', 40),
  ('Jules Verne', 41),
  ('Edwin A. Abbott', 42),
  ('Joseph Conrad', 43),
  ('J.K. Rowling', 44),
  ('Suzanne Collins', 45),
  ('Stieg Larsson', 46),
  ('C.S. Lewis', 47),
  ('Jane Austen', 48),
  ('J.D. Salinger', 49),
  ('J.R.R. Tolkien', 50),
  ('Aldous Huxley', 51),
  ('J.R.R. Tolkien', 52),
  ('Homer', 53),
  ('George R.R. Martin', 54),
  ('John Green', 55),
  ('Gillian Flynn', 56),
  ('Jane Austen', 57),
  ('Emily Bronte', 58),
  ('Jane Austen', 59),
  ('Jane Austen', 60),
  ('Charlotte Bronte', 58);
-- Insert authors for each book
INSERT INTO book_author (author, book_id)
VALUES
  ('Edith Wharton', 61),
  ('Harriet Beecher Stowe', 62),
  ('D.H. Lawrence', 63),
  ('F. Scott Fitzgerald', 64),
  ('Joseph Conrad', 65),
  ('Wilkie Collins', 66),
  ('Multiple Authors', 67),
  ('Mark Twain', 68),
  ('Robert Louis Stevenson', 69),
  ('Jane Austen', 70),
  ('Charles Dickens', 71),
  ('Charles Dickens', 72),
  ('Louisa May Alcott', 73),
  ('Charles Dickens', 74),
  ('Charles Dickens', 75),
  ('Miguel de Cervantes', 76),
  ('Arthur Conan Doyle', 77),
  ('L. Frank Baum', 78),
  ('Mark Twain', 79),
  ('Robert Louis Stevenson', 80),
  ('Herman Melville', 81),
  ('Daniel Defoe', 82),
  ('Jack London', 83),
  ('J.K. Rowling', 84),
  ('J.K. Rowling', 85),
  ('J.K. Rowling', 86),
  ('C.S. Lewis', 87),
  ('Philip Pullman', 88),
  ('William Shakespeare', 89),
  ('Charles Dickens', 90),
  ('F. Scott Fitzgerald', 91),
  ('Homer', 92),
  ('William Shakespeare', 93),
  ('William Shakespeare', 94),
  ('James Fenimore Cooper', 95),
  ('William Shakespeare', 96),
  ('William Shakespeare', 97),
  ('Bram Stoker', 98),
  ('George MacDonald', 99),
  ('Carlo Collodi', 100),
  ('E. Nesbit', 101),
  ('L. Frank Baum', 102);

---
--- extra - random
INSERT INTO book_author (author, book_id)
VALUES
  ('Edith Wharton', 31),
  ('Harriet Beecher Stowe', 47),
  ('D.H. Lawrence', 42),
  ('F. Scott Fitzgerald', 23),
  ('Joseph Conrad', 28),
  ('Wilkie Collins', 37),
  ('Multiple Authors', 45),
  ('Mark Twain', 49),
  ('Robert Louis Stevenson', 26),
  ('Jane Austen', 33),
  ('Charles Dickens', 39);

--- Δανεισμοί
--- School 3
INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (44, 4, 'borrowed', '2023-05-12', '2023-05-15', '2023-05-17');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (45, 11, 'borrowed', '2023-05-13', '2023-05-16', '2023-05-18');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (46, 12, 'borrowed', '2023-05-14', '2023-05-17', '2023-05-19');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (47, 13, 'borrowed', '2023-05-15', '2023-05-18', '2023-05-20');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (48, 25, 'borrowed', '2023-05-16', '2023-05-19', '2023-05-21');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (49, 26, 'borrowed', '2023-05-17', '2023-05-20', '2023-05-22');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (50, 27, 'borrowed', '2023-05-18', '2023-05-21', '2023-05-23');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (51, 28, 'borrowed', '2023-05-19', '2023-05-22', '2023-05-24');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (52, 29, 'borrowed', '2023-05-20', '2023-05-23', '2023-05-25');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (53, 39, 'borrowed', '2023-05-21', '2023-05-24', '2023-05-26');

--- School 2
INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (23, 3, 'borrowed', '2023-05-12', '2023-05-15', '2023-05-17');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (24, 8, 'borrowed', '2023-05-13', '2023-05-16', '2023-05-18');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (25, 9, 'borrowed', '2023-05-14', '2023-05-17', '2023-05-19');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (26, 10, 'borrowed', '2023-05-15', '2023-05-18', '2023-05-20');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (27, 20, 'borrowed', '2023-05-16', '2023-05-19', '2023-05-21');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (28, 21, 'borrowed', '2023-05-17', '2023-05-20', '2023-05-22');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (29, 22, 'borrowed', '2023-05-18', '2023-05-21', '2023-05-23');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (30, 23, 'borrowed', '2023-05-19', '2023-05-22', '2023-05-24');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (31, 24, 'borrowed', '2023-05-20', '2023-05-23', '2023-05-25');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (32, 34, 'borrowed', '2023-05-21', '2023-05-24', '2023-05-26');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (33, 35, 'borrowed', '2023-05-22', '2023-05-25', '2023-05-27');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (34, 36, 'borrowed', '2023-05-23', '2023-05-26', '2023-05-28');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (35, 37, 'borrowed', '2023-05-24', '2023-05-27', '2023-05-29');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (36, 38, 'borrowed', '2023-05-25', '2023-05-28', '2023-05-30');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (37, 3, 'borrowed', '2023-05-26', '2023-05-29', '2023-05-31');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (38, 8, 'borrowed', '2023-05-27', '2023-05-30', '2023-06-01');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (39, 9, 'borrowed', '2023-05-28', '2023-05-31', '2023-06-02');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (40, 10, 'borrowed', '2023-05-29', '2023-06-01', '2023-06-03');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (41, 20, 'borrowed', '2023-05-30', '2023-06-02', '2023-06-04');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (42, 21, 'borrowed', '2023-05-31', '2023-06-03', '2023-06-05');

--- School 1
INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (1, 2, 'borrowed', '2023-05-01', '2023-05-04', '2023-05-06');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (1, 15, 'borrowed', '2023-05-02', '2023-05-05', '2023-05-07');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (3, 6, 'borrowed', '2023-05-03', '2023-05-06', '2023-05-08');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (4, 7, 'borrowed', '2023-05-04', '2023-05-07', '2023-05-09');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (5, 14, 'borrowed', '2023-05-05', '2023-05-08', '2023-05-10');

/* INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (6, 15, 'borrowed', '2023-05-06', '2023-05-09', '2023-05-11'); */

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (7, 16, 'borrowed', '2023-05-07', '2023-05-10', '2023-05-12');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (8, 17, 'borrowed', '2023-05-08', '2023-05-11', '2023-05-13');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (9, 18, 'borrowed', '2023-05-09', '2023-05-12', '2023-05-14');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (10, 19, 'borrowed', '2023-05-10', '2023-05-13', '2023-05-15');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (11, 30, 'borrowed', '2023-05-11', '2023-05-14', '2023-05-16');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (12, 31, 'borrowed', '2023-05-12', '2023-05-15', '2023-05-17');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (13, 32, 'borrowed', '2023-05-13', '2023-05-16', '2023-05-18');

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (14, 33, 'borrowed', '2023-05-14', '2023-05-17', '2023-05-19');

--- Reviews
-- school 1
-- Reviews for user_id 2
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (2, 1, 'Pride and Prejudice is a timeless classic with memorable characters and a beautiful love story.', '2023-01-10', '5');

-- Reviews for user_id 6
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (6, 3, 'The Hobbit is a charming adventure filled with magical creatures and a captivating quest.', '2023-02-15', '4');

-- Reviews for user_id 7
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (7, 4, '1984 is a dystopian masterpiece that offers a chilling portrayal of a totalitarian society.', '2023-03-20', '5');

-- Reviews for user_id 14
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (14, 5, 'The Alchemist is a thought-provoking novel that inspires readers to follow their dreams.', '2023-04-25', '4');

-- Reviews for user_id 15
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (15, 1, 'Pride and Prejudice is a beloved classic that showcases the complexities of love and societal expectations.', '2022-12-05', '5');

-- Reviews for user_id 16
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (16, 7, 'To the Lighthouse is a beautifully written novel that explores themes of introspection and the passage of time.', '2023-01-25', '4');

-- Reviews for user_id 17
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (17, 8, 'Moby-Dick is an epic tale of adventure and obsession set in the world of whaling.', '2023-02-08', '5');

-- Reviews for user_id 18
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (18, 9, 'The Picture of Dorian Gray is a haunting novel that explores the corrupting nature of beauty and youth.', '2023-03-15', '4');

-- Reviews for user_id 19
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (19, 16, 'The Kite Runner is a powerful and emotional story of friendship, redemption, and the consequences of our choices.', '2023-04-12', '3');

-- Reviews for user_id 19
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (19, 10, 'Frankenstein is a Gothic masterpiece that raises questions about the boundaries of science and the nature of humanity.', '2023-01-28', '2');

-- Reviews for user_id 30
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (30, 11, 'A Game of Thrones is an immersive and epic fantasy series filled with complex characters and political intrigue.', '2023-02-20', '1');

-- Reviews for user_id 31
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (31, 12, 'The Fault in Our Stars is a heart-wrenching and beautifully written novel about love, loss, and the power of human connection.', '2023-03-18', '4');

-- Reviews for user_id 32
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (32, 13, 'Gone Girl is a gripping psychological thriller with twists and turns that keep you guessing until the very end.', '2023-04-10', '3');

-- Reviews for user_id 33
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (33, 14, 'The Chronicles of Narnia is a beloved fantasy series that takes readers on a magical journey through a world of imagination.', '2023-05-05', '4');

-- school 2
-- Reviews for user_id 3
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (3, 23, 'The Da Vinci Code is a gripping and intricate thriller that keeps you hooked from start to finish.', '2023-01-12', '3');

INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (3, 37, 'The War of the Worlds is a classic science fiction novel that explores themes of invasion and humanity.', '2023-02-18', '5');

-- Reviews for user_id 8
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (8, 38, 'The Time Machine is a thought-provoking science fiction novella that delves into the concept of time travel.', '2023-03-20', '3');

INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (8, 24, 'The Kite Runner is a deeply moving and poignant novel that explores themes of friendship, betrayal, and redemption.', '2023-04-15', '5');

-- Reviews for user_id 9
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (9, 25, 'The Book Thief is a haunting and beautifully written story set during World War II.', '2023-05-08', '4');

INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (9, 39, 'The Poison Belt is a thrilling science fiction novella that continues the adventures of Professor Challenger.', '2023-02-27', '5');

-- Reviews for user_id 10
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (10, 26, 'The Secret Life of Bees is a heartwarming and powerful novel that explores themes of family, race, and forgiveness.', '2023-03-10', '4');

INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (10, 40, 'The Invisible Man is a classic science fiction novel that examines the consequences of scientific experimentation.', '2023-04-22', '2');

-- Reviews for user_id 20
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (20, 27, 'The Road is a post-apocalyptic novel that offers a bleak yet gripping depiction of survival and hope.', '2023-01-28', '4');

INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (20, 41, 'Vingt mille lieues sous les mers (Twenty Thousand Leagues Under the Sea) is a classic adventure novel by Jules Verne.', '2023-02-12', '5');

-- Reviews for user_id 21
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (21, 28, 'The Bell Jar is a poignant and semi-autobiographical novel that explores themes of mental health and identity.', '2023-03-05', '4');

INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (21, 42, 'Flatland is a unique and thought-provoking novella that presents a mathematical world of dimensions.', '2023-04-18', '2');

-- Reviews for user_id 22
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (22, 29, 'The Help is a compelling and emotionally charged novel that tackles issues of race and discrimination.', '2023-05-02', '4');

-- Reviews for user_id 23
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (23, 30, 'Alice''s Adventures in Wonderland is a whimsical and imaginative tale that takes readers on a surreal journey.', '2023-01-15', '5');

-- school 3
-- Reviews for user_id 4
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (4, 44, 'Harry Potter and the Sorcerer''s Stone is a magical and enchanting start to the beloved Harry Potter series.', '2023-03-18', '5');

-- Reviews for user_id 11
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (11, 45, 'The Hunger Games is a gripping and thrilling dystopian novel that keeps you on the edge of your seat.', '2023-02-10', '2');

-- Reviews for user_id 12
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (12, 46, 'The Girl with the Dragon Tattoo is a gripping and suspenseful crime thriller with complex and intriguing characters.', '2023-01-25', '5');

-- Reviews for user_id 13
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (13, 47, 'The Chronicles of Narnia is a timeless and enchanting series that transports readers to a magical world.', '2023-04-02', '4');

-- Reviews for user_id 25
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (25, 48, 'Pride and Prejudice is a classic and beautifully written novel that explores themes of love, societal norms, and personal growth.', '2023-03-15', '5');

-- Reviews for user_id 26
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (26, 49, 'The Catcher in the Rye is a coming-of-age novel that captures the disillusionment and alienation of the protagonist.', '2023-04-28', '4');

-- Reviews for user_id 27
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (27, 50, 'The Hobbit is a delightful and adventurous tale set in the world of Middle-earth.', '2023-02-22', '2');

-- Reviews for user_id 28
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (28, 51, 'Brave New World is a thought-provoking dystopian novel that explores themes of technology, society, and individuality.', '2023-05-05', '4');

-- Reviews for user_id 29
INSERT INTO review (user_id, book_id, review_text, rev_date, rating)
VALUES (29, 52, 'The Lord of the Rings is an epic fantasy trilogy that takes readers on a journey through a richly detailed and immersive world.', '2023-01-08', '5');


--- Κρατήσεις

-- School 1
INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (2, 2, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(2);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (4, 6, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(4);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (5, 7, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(5);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (6, 14, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(6);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (7, 15, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(7);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (8, 16, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(8);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (9, 15, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(9);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (10, 18, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(10);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (11, 19, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(11);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (12, 30, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(12);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (13, 31, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(13);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (14, 32, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(14);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (15, 33, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(15);

-- School 2

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (27, 20, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(27);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (28, 21, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(28);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (29, 22, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(29);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (33, 35, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(33);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (34, 36, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(34);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (35, 37, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(35);


-- School 3
INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (47, 11, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(47);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (48, 25, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(48);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (49, 26, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(49);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (50, 27, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(50);

INSERT INTO book_status (book_id, user_id, status, request_date, approval_date, return_date)
VALUES (51, 43, 'reserved', DATE_SUB(CURDATE(), INTERVAL 3 DAY), NULL, NULL);
CALL decrease_available_books(51);

--- keywords
-- Book 1: Pride and Prejudice
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 1);
INSERT INTO book_keywords (keywords, book_id) VALUES ('social class', 1);
INSERT INTO book_keywords (keywords, book_id) VALUES ('marriage', 1);
INSERT INTO book_keywords (keywords, book_id) VALUES ('19th century', 1);

-- Book 2: The Catcher in the Rye
INSERT INTO book_keywords (keywords, book_id) VALUES ('coming of age', 2);
INSERT INTO book_keywords (keywords, book_id) VALUES ('teenage angst', 2);
INSERT INTO book_keywords (keywords, book_id) VALUES ('alienation', 2);
INSERT INTO book_keywords (keywords, book_id) VALUES ('rebellion', 2);

-- Book 3: The Hobbit
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 3);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 3);
INSERT INTO book_keywords (keywords, book_id) VALUES ('quest', 3);
INSERT INTO book_keywords (keywords, book_id) VALUES ('dwarves', 3);

-- Book 4: 1984
INSERT INTO book_keywords (keywords, book_id) VALUES ('dystopian', 4);
INSERT INTO book_keywords (keywords, book_id) VALUES ('totalitarianism', 4);
INSERT INTO book_keywords (keywords, book_id) VALUES ('surveillance', 4);
INSERT INTO book_keywords (keywords, book_id) VALUES ('thought control', 4);

-- Book 5: The Alchemist
INSERT INTO book_keywords (keywords, book_id) VALUES ('allegory', 5);
INSERT INTO book_keywords (keywords, book_id) VALUES ('destiny', 5);
INSERT INTO book_keywords (keywords, book_id) VALUES ('personal legend', 5);
INSERT INTO book_keywords (keywords, book_id) VALUES ('self-discovery', 5);

-- Book 6: The Great Expectations
INSERT INTO book_keywords (keywords, book_id) VALUES ('bildungsroman', 6);
INSERT INTO book_keywords (keywords, book_id) VALUES ('ambition', 6);
INSERT INTO book_keywords (keywords, book_id) VALUES ('unrequited love', 6);
INSERT INTO book_keywords (keywords, book_id) VALUES ('social status', 6);

-- Book 7: To the Lighthouse
INSERT INTO book_keywords (keywords, book_id) VALUES ('modernist', 7);
INSERT INTO book_keywords (keywords, book_id) VALUES ('stream of consciousness', 7);
INSERT INTO book_keywords (keywords, book_id) VALUES ('family dynamics', 7);
INSERT INTO book_keywords (keywords, book_id) VALUES ('symbolism', 7);

-- Book 8: Moby-Dick
INSERT INTO book_keywords (keywords, book_id) VALUES ('whaling', 8);
INSERT INTO book_keywords (keywords, book_id) VALUES ('obsession', 8);
INSERT INTO book_keywords (keywords, book_id) VALUES ('revenge', 8);
INSERT INTO book_keywords (keywords, book_id) VALUES ('man vs. nature', 8);

-- Book 9: The Picture of Dorian Gray
INSERT INTO book_keywords (keywords, book_id) VALUES ('aestheticism', 9);
INSERT INTO book_keywords (keywords, book_id) VALUES ('morality', 9);
INSERT INTO book_keywords (keywords, book_id) VALUES ('corruption', 9);
INSERT INTO book_keywords (keywords, book_id) VALUES ('eternal youth', 9);

-- Book 10: Frankenstein
INSERT INTO book_keywords (keywords, book_id) VALUES ('gothic', 10);
INSERT INTO book_keywords (keywords, book_id) VALUES ('science fiction', 10);
INSERT INTO book_keywords (keywords, book_id) VALUES ('identity', 10);
INSERT INTO book_keywords (keywords, book_id) VALUES ('creation', 10);

-- Book 11: A Game of Thrones
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 11);
INSERT INTO book_keywords (keywords, book_id) VALUES ('epic', 11);
INSERT INTO book_keywords (keywords, book_id) VALUES ('politics', 11);
INSERT INTO book_keywords (keywords, book_id) VALUES ('intrigue', 11);

-- Book 12: The Fault in Our Stars
INSERT INTO book_keywords (keywords, book_id) VALUES ('young adult', 12);
INSERT INTO book_keywords (keywords, book_id) VALUES ('cancer', 12);
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 12);
INSERT INTO book_keywords (keywords, book_id) VALUES ('friendship', 12);

-- Book 13: Gone Girl
INSERT INTO book_keywords (keywords, book_id) VALUES ('thriller', 13);
INSERT INTO book_keywords (keywords, book_id) VALUES ('mystery', 13);
INSERT INTO book_keywords (keywords, book_id) VALUES ('suspense', 13);
INSERT INTO book_keywords (keywords, book_id) VALUES ('marriage', 13);

-- Book 14: The Chronicles of Narnia
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 14);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 14);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 14);
INSERT INTO book_keywords (keywords, book_id) VALUES ('children', 14);

-- Book 15: The Da Vinci Code
INSERT INTO book_keywords (keywords, book_id) VALUES ('conspiracy', 15);
INSERT INTO book_keywords (keywords, book_id) VALUES ('mystery', 15);
INSERT INTO book_keywords (keywords, book_id) VALUES ('religion', 15);
INSERT INTO book_keywords (keywords, book_id) VALUES ('art', 15);

-- Book 16: The Kite Runner
INSERT INTO book_keywords (keywords, book_id) VALUES ('coming of age', 16);
INSERT INTO book_keywords (keywords, book_id) VALUES ('friendship', 16);
INSERT INTO book_keywords (keywords, book_id) VALUES ('redemption', 16);
INSERT INTO book_keywords (keywords, book_id) VALUES ('Afghanistan', 16);

-- Book 17: The Book Thief
INSERT INTO book_keywords (keywords, book_id) VALUES ('historical fiction', 17);
INSERT INTO book_keywords (keywords, book_id) VALUES ('World War II', 17);
INSERT INTO book_keywords (keywords, book_id) VALUES ('theft', 17);
INSERT INTO book_keywords (keywords, book_id) VALUES ('books', 17);

-- Book 18: The Secret Life of Bees
INSERT INTO book_keywords (keywords, book_id) VALUES ('race', 18);
INSERT INTO book_keywords (keywords, book_id) VALUES ('family', 18);
INSERT INTO book_keywords (keywords, book_id) VALUES ('beekeeping', 18);
INSERT INTO book_keywords (keywords, book_id) VALUES ('South Carolina', 18);

-- Book 19: The Road
INSERT INTO book_keywords (keywords, book_id) VALUES ('post-apocalyptic', 19);
INSERT INTO book_keywords (keywords, book_id) VALUES ('father and son', 19);
INSERT INTO book_keywords (keywords, book_id) VALUES ('survival', 19);
INSERT INTO book_keywords (keywords, book_id) VALUES ('desolation', 19);

-- Book 20: The Bell Jar
INSERT INTO book_keywords (keywords, book_id) VALUES ('autobiographical', 20);
INSERT INTO book_keywords (keywords, book_id) VALUES ('mental health', 20);
INSERT INTO book_keywords (keywords, book_id) VALUES ('coming of age', 20);
INSERT INTO book_keywords (keywords, book_id) VALUES ('depression', 20);

-- Book 21: The Help
INSERT INTO book_keywords (keywords, book_id) VALUES ('racial segregation', 21);
INSERT INTO book_keywords (keywords, book_id) VALUES ('civil rights', 21);
INSERT INTO book_keywords (keywords, book_id) VALUES ('empowerment', 21);
INSERT INTO book_keywords (keywords, book_id) VALUES ('Southern United States', 21);

-- Book 22: The Hunger Games
INSERT INTO book_keywords (keywords, book_id) VALUES ('dystopian', 22);
INSERT INTO book_keywords (keywords, book_id) VALUES ('survival', 22);
INSERT INTO book_keywords (keywords, book_id) VALUES ('government control', 22);
INSERT INTO book_keywords (keywords, book_id) VALUES ('rebellion', 22);

-- Book 23: The Da Vinci Code
INSERT INTO book_keywords (keywords, book_id) VALUES ('conspiracy', 23);
INSERT INTO book_keywords (keywords, book_id) VALUES ('mystery', 23);
INSERT INTO book_keywords (keywords, book_id) VALUES ('religion', 23);
INSERT INTO book_keywords (keywords, book_id) VALUES ('art', 23);

-- Book 24: The Kite Runner
INSERT INTO book_keywords (keywords, book_id) VALUES ('coming of age', 24);
INSERT INTO book_keywords (keywords, book_id) VALUES ('friendship', 24);
INSERT INTO book_keywords (keywords, book_id) VALUES ('redemption', 24);
INSERT INTO book_keywords (keywords, book_id) VALUES ('Afghanistan', 24);

-- Book 25: The Book Thief
INSERT INTO book_keywords (keywords, book_id) VALUES ('historical fiction', 25);
INSERT INTO book_keywords (keywords, book_id) VALUES ('World War II', 25);
INSERT INTO book_keywords (keywords, book_id) VALUES ('theft', 25);
INSERT INTO book_keywords (keywords, book_id) VALUES ('books', 25);

-- Book 26: The Secret Life of Bees
INSERT INTO book_keywords (keywords, book_id) VALUES ('race', 26);
INSERT INTO book_keywords (keywords, book_id) VALUES ('family', 26);
INSERT INTO book_keywords (keywords, book_id) VALUES ('beekeeping', 26);
INSERT INTO book_keywords (keywords, book_id) VALUES ('South Carolina', 26);

-- Book 27: The Road
INSERT INTO book_keywords (keywords, book_id) VALUES ('post-apocalyptic', 27);
INSERT INTO book_keywords (keywords, book_id) VALUES ('father and son', 27);
INSERT INTO book_keywords (keywords, book_id) VALUES ('survival', 27);
INSERT INTO book_keywords (keywords, book_id) VALUES ('desolation', 27);

-- Book 28: The Bell Jar
INSERT INTO book_keywords (keywords, book_id) VALUES ('autobiographical', 28);
INSERT INTO book_keywords (keywords, book_id) VALUES ('mental health', 28);
INSERT INTO book_keywords (keywords, book_id) VALUES ('coming of age', 28);
INSERT INTO book_keywords (keywords, book_id) VALUES ('depression', 28);

-- Book 29: The Help
INSERT INTO book_keywords (keywords, book_id) VALUES ('racial segregation', 29);
INSERT INTO book_keywords (keywords, book_id) VALUES ('civil rights', 29);
INSERT INTO book_keywords (keywords, book_id) VALUES ('empowerment', 29);
INSERT INTO book_keywords (keywords, book_id) VALUES ('Southern United States', 29);

-- Book 30: Alice's Adventures in Wonderland
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 30);
INSERT INTO book_keywords (keywords, book_id) VALUES ('imagination', 30);
INSERT INTO book_keywords (keywords, book_id) VALUES ('nonsense', 30);
INSERT INTO book_keywords (keywords, book_id) VALUES ('children', 30);

-- Book 31: Frankenstein; or, The Modern Prometheus
INSERT INTO book_keywords (keywords, book_id) VALUES ('gothic', 31);
INSERT INTO book_keywords (keywords, book_id) VALUES ('science fiction', 31);
INSERT INTO book_keywords (keywords, book_id) VALUES ('ambition', 31);
INSERT INTO book_keywords (keywords, book_id) VALUES ('creation', 31);

-- Book 32: The Wonderful Wizard of Oz
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 32);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 32);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 32);
INSERT INTO book_keywords (keywords, book_id) VALUES ('journey', 32);

-- Book 33: The Lost World
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 33);
INSERT INTO book_keywords (keywords, book_id) VALUES ('dinosaurs', 33);
INSERT INTO book_keywords (keywords, book_id) VALUES ('exploration', 33);
INSERT INTO book_keywords (keywords, book_id) VALUES ('prehistoric', 33);

-- Book 34: Dracula
INSERT INTO book_keywords (keywords, book_id) VALUES ('gothic', 34);
INSERT INTO book_keywords (keywords, book_id) VALUES ('vampires', 34);
INSERT INTO book_keywords (keywords, book_id) VALUES ('horror', 34);
INSERT INTO book_keywords (keywords, book_id) VALUES ('supernatural', 34);

-- Book 35: Brave New World
INSERT INTO book_keywords (keywords, book_id) VALUES ('dystopian', 35);
INSERT INTO book_keywords (keywords, book_id) VALUES ('social engineering', 35);
INSERT INTO book_keywords (keywords, book_id) VALUES ('technological control', 35);
INSERT INTO book_keywords (keywords, book_id) VALUES ('utopia', 35);

-- Book 36: Nineteen Eighty-Four
INSERT INTO book_keywords (keywords, book_id) VALUES ('dystopian', 36);
INSERT INTO book_keywords (keywords, book_id) VALUES ('totalitarianism', 36);
INSERT INTO book_keywords (keywords, book_id) VALUES ('surveillance', 36);
INSERT INTO book_keywords (keywords, book_id) VALUES ('thought control', 36);

-- Book 37: The War of the Worlds
INSERT INTO book_keywords (keywords, book_id) VALUES ('science fiction', 37);
INSERT INTO book_keywords (keywords, book_id) VALUES ('alien invasion', 37);
INSERT INTO book_keywords (keywords, book_id) VALUES ('Martians', 37);
INSERT INTO book_keywords (keywords, book_id) VALUES ('interplanetary', 37);

-- Book 38: The Time Machine
INSERT INTO book_keywords (keywords, book_id) VALUES ('science fiction', 38);
INSERT INTO book_keywords (keywords, book_id) VALUES ('time travel', 38);
INSERT INTO book_keywords (keywords, book_id) VALUES ('future', 38);
INSERT INTO book_keywords (keywords, book_id) VALUES ('evolution', 38);

-- Book 39: The Poison Belt
INSERT INTO book_keywords (keywords, book_id) VALUES ('science fiction', 39);
INSERT INTO book_keywords (keywords, book_id) VALUES ('disaster', 39);
INSERT INTO book_keywords (keywords, book_id) VALUES ('survival', 39);
INSERT INTO book_keywords (keywords, book_id) VALUES ('apocalypse', 39);

-- Book 40: The Invisible Man
INSERT INTO book_keywords (keywords, book_id) VALUES ('science fiction', 40);
INSERT INTO book_keywords (keywords, book_id) VALUES ('invisibility', 40);
INSERT INTO book_keywords (keywords, book_id) VALUES ('mad scientist', 40);
INSERT INTO book_keywords (keywords, book_id) VALUES ('obsession', 40);

-- Book 41: Vingt mille lieues sous les mers
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 41);
INSERT INTO book_keywords (keywords, book_id) VALUES ('underwater', 41);
INSERT INTO book_keywords (keywords, book_id) VALUES ('exploration', 41);
INSERT INTO book_keywords (keywords, book_id) VALUES ('submarine', 41);

-- Book 42: Flatland
INSERT INTO book_keywords (keywords, book_id) VALUES ('mathematical fiction', 42);
INSERT INTO book_keywords (keywords, book_id) VALUES ('satire', 42);
INSERT INTO book_keywords (keywords, book_id) VALUES ('dimension', 42);
INSERT INTO book_keywords (keywords, book_id) VALUES ('social commentary', 42);

-- Book 43: The Secret Agent
INSERT INTO book_keywords (keywords, book_id) VALUES ('espionage', 43);
INSERT INTO book_keywords (keywords, book_id) VALUES ('terrorism', 43);
INSERT INTO book_keywords (keywords, book_id) VALUES ('anarchism', 43);
INSERT INTO book_keywords (keywords, book_id) VALUES ('political thriller', 43);

-- Book 44: Harry Potter and the Sorcerer's Stone
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 44);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 44);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 44);
INSERT INTO book_keywords (keywords, book_id) VALUES ('wizardry', 44);

-- Book 45: The Hunger Games
INSERT INTO book_keywords (keywords, book_id) VALUES ('dystopian', 45);
INSERT INTO book_keywords (keywords, book_id) VALUES ('survival', 45);
INSERT INTO book_keywords (keywords, book_id) VALUES ('fight to the death', 45);
INSERT INTO book_keywords (keywords, book_id) VALUES ('rebellion', 45);

-- Book 46: The Girl with the Dragon Tattoo
INSERT INTO book_keywords (keywords, book_id) VALUES ('mystery', 46);
INSERT INTO book_keywords (keywords, book_id) VALUES ('thriller', 46);
INSERT INTO book_keywords (keywords, book_id) VALUES ('crime', 46);
INSERT INTO book_keywords (keywords, book_id) VALUES ('hacker', 46);

-- Book 47: The Chronicles of Narnia
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 47);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 47);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 47);
INSERT INTO book_keywords (keywords, book_id) VALUES ('talking animals', 47);

-- Book 48: Pride and Prejudice
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 48);
INSERT INTO book_keywords (keywords, book_id) VALUES ('classics', 48);
INSERT INTO book_keywords (keywords, book_id) VALUES ('social commentary', 48);
INSERT INTO book_keywords (keywords, book_id) VALUES ('marriage', 48);

-- Book 49: The Catcher in the Rye
INSERT INTO book_keywords (keywords, book_id) VALUES ('coming of age', 49);
INSERT INTO book_keywords (keywords, book_id) VALUES ('alienation', 49);
INSERT INTO book_keywords (keywords, book_id) VALUES ('youth', 49);
INSERT INTO book_keywords (keywords, book_id) VALUES ('identity', 49);

-- Book 50: The Hobbit
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 50);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 50);
INSERT INTO book_keywords (keywords, book_id) VALUES ('quest', 50);
INSERT INTO book_keywords (keywords, book_id) VALUES ('dragon', 50);

-- Book 51: Brave New World
INSERT INTO book_keywords (keywords, book_id) VALUES ('dystopian', 51);
INSERT INTO book_keywords (keywords, book_id) VALUES ('social engineering', 51);
INSERT INTO book_keywords (keywords, book_id) VALUES ('technological control', 51);
INSERT INTO book_keywords (keywords, book_id) VALUES ('utopia', 51);

-- Book 52: The Lord of the Rings
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 52);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 52);
INSERT INTO book_keywords (keywords, book_id) VALUES ('epic', 52);
INSERT INTO book_keywords (keywords, book_id) VALUES ('quest', 52);

-- Book 53: The Odyssey
INSERT INTO book_keywords (keywords, book_id) VALUES ('epic', 53);
INSERT INTO book_keywords (keywords, book_id) VALUES ('mythology', 53);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 53);
INSERT INTO book_keywords (keywords, book_id) VALUES ('journey', 53);

-- Book 54: A Game of Thrones
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 54);
INSERT INTO book_keywords (keywords, book_id) VALUES ('epic', 54);
INSERT INTO book_keywords (keywords, book_id) VALUES ('political intrigue', 54);
INSERT INTO book_keywords (keywords, book_id) VALUES ('dragons', 54);

-- Book 55: The Fault in Our Stars
INSERT INTO book_keywords (keywords, book_id) VALUES ('young adult', 55);
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 55);
INSERT INTO book_keywords (keywords, book_id) VALUES ('cancer', 55);
INSERT INTO book_keywords (keywords, book_id) VALUES ('friendship', 55);

-- Book 56: Gone Girl
INSERT INTO book_keywords (keywords, book_id) VALUES ('mystery', 56);
INSERT INTO book_keywords (keywords, book_id) VALUES ('thriller', 56);
INSERT INTO book_keywords (keywords, book_id) VALUES ('marriage', 56);
INSERT INTO book_keywords (keywords, book_id) VALUES ('psychological', 56);

-- Book 57: Emma
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 57);
INSERT INTO book_keywords (keywords, book_id) VALUES ('comedy', 57);
INSERT INTO book_keywords (keywords, book_id) VALUES ('matchmaking', 57);
INSERT INTO book_keywords (keywords, book_id) VALUES ('society', 57);

-- Book 58: Wuthering Heights
INSERT INTO book_keywords (keywords, book_id) VALUES ('gothic', 58);
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 58);
INSERT INTO book_keywords (keywords, book_id) VALUES ('revenge', 58);
INSERT INTO book_keywords (keywords, book_id) VALUES ('obsession', 58);

-- Book 59: Sense and Sensibility
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 59);
INSERT INTO book_keywords (keywords, book_id) VALUES ('regency', 59);
INSERT INTO book_keywords (keywords, book_id) VALUES ('family', 59);
INSERT INTO book_keywords (keywords, book_id) VALUES ('sisters', 59);

-- Book 60: Northanger Abbey
INSERT INTO book_keywords (keywords, book_id) VALUES ('gothic', 60);
INSERT INTO book_keywords (keywords, book_id) VALUES ('satire', 60);
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 60);
INSERT INTO book_keywords (keywords, book_id) VALUES ('parody', 60);

-- Book 61: Ethan Frome
INSERT INTO book_keywords (keywords, book_id) VALUES ('tragedy', 61);
INSERT INTO book_keywords (keywords, book_id) VALUES ('love triangle', 61);
INSERT INTO book_keywords (keywords, book_id) VALUES ('New England', 61);

-- Book 62: Uncle Tom's Cabin
INSERT INTO book_keywords (keywords, book_id) VALUES ('slavery', 62);
INSERT INTO book_keywords (keywords, book_id) VALUES ('abolitionism', 62);
INSERT INTO book_keywords (keywords, book_id) VALUES ('racial injustice', 62);

-- Book 63: Women in Love
INSERT INTO book_keywords (keywords, book_id) VALUES ('relationships', 63);
INSERT INTO book_keywords (keywords, book_id) VALUES ('sexuality', 63);
INSERT INTO book_keywords (keywords, book_id) VALUES ('modernism', 63);

-- Book 64: This Side of Paradise
INSERT INTO book_keywords (keywords, book_id) VALUES ('coming of age', 64);
INSERT INTO book_keywords (keywords, book_id) VALUES ('lost generation', 64);
INSERT INTO book_keywords (keywords, book_id) VALUES ('youth', 64);

-- Book 65: Heart of Darkness
INSERT INTO book_keywords (keywords, book_id) VALUES ('colonialism', 65);
INSERT INTO book_keywords (keywords, book_id) VALUES ('darkness', 65);
INSERT INTO book_keywords (keywords, book_id) VALUES ('psychological', 65);

-- Book 66: The Moonstone
INSERT INTO book_keywords (keywords, book_id) VALUES ('mystery', 66);
INSERT INTO book_keywords (keywords, book_id) VALUES ('detective', 66);
INSERT INTO book_keywords (keywords, book_id) VALUES ('stolen diamond', 66);

-- Book 67: Bible
INSERT INTO book_keywords (keywords, book_id) VALUES ('religion', 67);
INSERT INTO book_keywords (keywords, book_id) VALUES ('faith', 67);
INSERT INTO book_keywords (keywords, book_id) VALUES ('spirituality', 67);

-- Book 68: Adventures of Huckleberry Finn
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 68);
INSERT INTO book_keywords (keywords, book_id) VALUES ('friendship', 68);
INSERT INTO book_keywords (keywords, book_id) VALUES ('racism', 68);

-- Book 69: Treasure Island
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 69);
INSERT INTO book_keywords (keywords, book_id) VALUES ('pirates', 69);
INSERT INTO book_keywords (keywords, book_id) VALUES ('treasure hunt', 69);

-- Book 70: Sense and Sensibility
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 70);
INSERT INTO book_keywords (keywords, book_id) VALUES ('family', 70);
INSERT INTO book_keywords (keywords, book_id) VALUES ('sisters', 70);

-- Book 71: A Tale of Two Cities
INSERT INTO book_keywords (keywords, book_id) VALUES ('historical fiction', 71);
INSERT INTO book_keywords (keywords, book_id) VALUES ('revolution', 71);
INSERT INTO book_keywords (keywords, book_id) VALUES ('French Revolution', 71);

-- Book 72: A Christmas Carol
INSERT INTO book_keywords (keywords, book_id) VALUES ('Christmas', 72);
INSERT INTO book_keywords (keywords, book_id) VALUES ('ghosts', 72);
INSERT INTO book_keywords (keywords, book_id) VALUES ('redemption', 72);

-- Book 73: Little Women
INSERT INTO book_keywords (keywords, book_id) VALUES ('coming of age', 73);
INSERT INTO book_keywords (keywords, book_id) VALUES ('sisters', 73);
INSERT INTO book_keywords (keywords, book_id) VALUES ('family', 73);

-- Book 74: Oliver Twist
INSERT INTO book_keywords (keywords, book_id) VALUES ('poverty', 74);
INSERT INTO book_keywords (keywords, book_id) VALUES ('orphan', 74);
INSERT INTO book_keywords (keywords, book_id) VALUES ('London', 74);

-- Book 75: Great Expectations
INSERT INTO book_keywords (keywords, book_id) VALUES ('ambition', 75);
INSERT INTO book_keywords (keywords, book_id) VALUES ('class', 75);
INSERT INTO book_keywords (keywords, book_id) VALUES ('inheritance', 75);

-- Book 76: El ingenioso hidalgo Don Quijote de la Mancha
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 76);
INSERT INTO book_keywords (keywords, book_id) VALUES ('chivalry', 76);
INSERT INTO book_keywords (keywords, book_id) VALUES ('satire', 76);

-- Book 77: The Adventures of Sherlock Holmes
INSERT INTO book_keywords (keywords, book_id) VALUES ('mystery', 77);
INSERT INTO book_keywords (keywords, book_id) VALUES ('detective', 77);
INSERT INTO book_keywords (keywords, book_id) VALUES ('crime', 77);

-- Book 78: The Wonderful Wizard of Oz
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 78);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 78);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 78);

-- Book 79: Adventures of Huckleberry Finn
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 79);
INSERT INTO book_keywords (keywords, book_id) VALUES ('friendship', 79);
INSERT INTO book_keywords (keywords, book_id) VALUES ('racism', 79);

-- Book 80: Treasure Island
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 80);
INSERT INTO book_keywords (keywords, book_id) VALUES ('pirates', 80);
INSERT INTO book_keywords (keywords, book_id) VALUES ('treasure hunt', 80);

-- Book 81: Moby Dick
INSERT INTO book_keywords (keywords, book_id) VALUES ('whaling', 81);
INSERT INTO book_keywords (keywords, book_id) VALUES ('obsession', 81);
INSERT INTO book_keywords (keywords, book_id) VALUES ('revenge', 81);

-- Book 82: Robinson Crusoe
INSERT INTO book_keywords (keywords, book_id) VALUES ('survival', 82);
INSERT INTO book_keywords (keywords, book_id) VALUES ('island', 82);
INSERT INTO book_keywords (keywords, book_id) VALUES ('solitude', 82);

-- Book 83: The Call of the Wild
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 83);
INSERT INTO book_keywords (keywords, book_id) VALUES ('dog', 83);
INSERT INTO book_keywords (keywords, book_id) VALUES ('wilderness', 83);

-- Book 84: Harry Potter and the Philosopher's Stone
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 84);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 84);
INSERT INTO book_keywords (keywords, book_id) VALUES ('wizardry', 84);

-- Book 85: Harry Potter and the Chamber of Secrets
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 85);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 85);
INSERT INTO book_keywords (keywords, book_id) VALUES ('wizardry', 85);

-- Book 86: Harry Potter and the Goblet of Fire
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 86);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 86);
INSERT INTO book_keywords (keywords, book_id) VALUES ('wizardry', 86);

-- Book 87: The Lion, the Witch and the Wardrobe
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 87);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 87);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 87);

-- Book 88: Northern Lights
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 88);
INSERT INTO book_keywords (keywords, book_id) VALUES ('parallel universe', 88);
INSERT INTO book_keywords (keywords, book_id) VALUES ('dust', 88);

-- Book 89: Hamlet
INSERT INTO book_keywords (keywords, book_id) VALUES ('tragedy', 89);
INSERT INTO book_keywords (keywords, book_id) VALUES ('revenge', 89);
INSERT INTO book_keywords (keywords, book_id) VALUES ('madness', 89);

-- Book 90: Great Expectations
INSERT INTO book_keywords (keywords, book_id) VALUES ('ambition', 90);
INSERT INTO book_keywords (keywords, book_id) VALUES ('class', 90);
INSERT INTO book_keywords (keywords, book_id) VALUES ('inheritance', 90);

-- Book 91: The Great Gatsby
INSERT INTO book_keywords (keywords, book_id) VALUES ('wealth', 91);
INSERT INTO book_keywords (keywords, book_id) VALUES ('American Dream', 91);
INSERT INTO book_keywords (keywords, book_id) VALUES ('romance', 91);

-- Book 92: Ὀδύσσεια (Odyssey)
INSERT INTO book_keywords (keywords, book_id) VALUES ('epic', 92);
INSERT INTO book_keywords (keywords, book_id) VALUES ('Greek mythology', 92);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 92);

-- Book 93: Romeo and Juliet
INSERT INTO book_keywords (keywords, book_id) VALUES ('tragedy', 93);
INSERT INTO book_keywords (keywords, book_id) VALUES ('love', 93);
INSERT INTO book_keywords (keywords, book_id) VALUES ('feud', 93);

-- Book 94: Macbeth
INSERT INTO book_keywords (keywords, book_id) VALUES ('tragedy', 94);
INSERT INTO book_keywords (keywords, book_id) VALUES ('ambition', 94);
INSERT INTO book_keywords (keywords, book_id) VALUES ('guilt', 94);

-- Book 95: The Last of the Mohicans
INSERT INTO book_keywords (keywords, book_id) VALUES ('historical fiction', 95);
INSERT INTO book_keywords (keywords, book_id) VALUES ('frontier', 95);
INSERT INTO book_keywords (keywords, book_id) VALUES ('Native Americans', 95);

-- Book 96: Tempest
INSERT INTO book_keywords (keywords, book_id) VALUES ('play', 96);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 96);
INSERT INTO book_keywords (keywords, book_id) VALUES ('shipwreck', 96);

-- Book 97: The Merchant of Venice
INSERT INTO book_keywords (keywords, book_id) VALUES ('play', 97);
INSERT INTO book_keywords (keywords, book_id) VALUES ('justice', 97);
INSERT INTO book_keywords (keywords, book_id) VALUES ('prejudice', 97);

-- Book 98: Dracula
INSERT INTO book_keywords (keywords, book_id) VALUES ('horror', 98);
INSERT INTO book_keywords (keywords, book_id) VALUES ('vampires', 98);
INSERT INTO book_keywords (keywords, book_id) VALUES ('gothic', 98);

-- Book 99: The Princess and the Goblin
INSERT INTO book_keywords (keywords, book_id) VALUES ('fairy tale', 99);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 99);
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 99);

-- Book 100: Le avventure di Pinocchio
INSERT INTO book_keywords (keywords, book_id) VALUES ('children', 100);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 100);
INSERT INTO book_keywords (keywords, book_id) VALUES ('morality', 100);

-- Book 101: The Story of the Amulet
INSERT INTO book_keywords (keywords, book_id) VALUES ('children', 101);
INSERT INTO book_keywords (keywords, book_id) VALUES ('time travel', 101);
INSERT INTO book_keywords (keywords, book_id) VALUES ('magic', 101);

-- Book 102: The Marvelous Land of Oz
INSERT INTO book_keywords (keywords, book_id) VALUES ('children', 102);
INSERT INTO book_keywords (keywords, book_id) VALUES ('fantasy', 102);
INSERT INTO book_keywords (keywords, book_id) VALUES ('adventure', 102);



----
---- Testing
INSERT INTO book_author (author, book_id) VALUES ('Edith Wharton', 62),('Edith Wharton', 63),('Edith Wharton', 64),('Edith Wharton', 65),('Edith Wharton', 66);
-- 3.2.2
INSERT INTO book_status (book_id, user_id, status, request_date,approval_date)
VALUES (16, 19, 'borrowed', '2023-04-29','2023-04-30');
CALL decrease_available_books(19);

---queue
INSERT INTO book_status (book_id, user_id, status, request_date)
VALUES (6, 15, 'queue', '2023-05-29');
INSERT INTO book_status (book_id, user_id, status, request_date)
VALUES (6, 16, 'queue', '2023-05-30');
INSERT INTO book_status (book_id, user_id, status, request_date)
VALUES (7, 16, 'queue', '2023-05-30');

