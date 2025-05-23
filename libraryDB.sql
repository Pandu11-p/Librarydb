create database LibraryDB;
use LibraryDB;

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    published_year YEAR,
    is_available BOOLEAN DEFAULT TRUE
);
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(15)
);
CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    book_id INT,
    loan_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
INSERT INTO Books (title, author, genre, published_year) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925),
('1984', 'George Orwell', 'Dystopian', 1949),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960),
('Pride and Prejudice', 'Jane Austen', 'Romance', 1913),
('The Picture of Dorian Gray', 'Oscar Wilde', 'Philosophical Fiction', 1990),
('The Alchemist', 'Paulo Coelho', 'Adventure Fiction', 1988),
('The Chronicles of Narnia: The Lion, the Witch and the Wardrobe', 'C.S. Lewis', 'Fantasy', 1950),
('Jane Eyre', 'Charlotte Brontë', 'Classic Romance', 1947),
('Wuthering Heights', 'Emily Brontë', 'Classic Romance', 1947),
('The Grapes of Wrath', 'John Steinbeck', 'Historical Fiction', 1939),
('The Road', 'Cormac McCarthy', 'Post-Apocalyptic Fiction', 2006),
('The Kite Runner', 'Khaled Hosseini', 'Drama/Coming-of-Age Fiction', 2003),
('Life of Pi', 'Yann Martel', 'Adventure Fiction/Philosophical Fiction', 2001),
('The Fault in Our Stars', 'John Green', 'Young Adult Fiction/Romance', 2012),
('Gone Girl', 'Gillian Flynn', 'Thriller/Mystery Fiction', 2012),
('The Da Vinci Code', 'Dan Brown', 'Mystery/Thriller Fiction', 2003),
('Angels & Demons', 'Dan Brown', 'Mystery/Thriller Fiction', 2000),
('The Hunger Games: Catching Fire ', 'Suzanne Collins','Dystopian/Young Adult Fiction ', 2009),
('Harry Potter and the Sorcerer\'s Stone ', 'J.K. Rowling','Fantasy/Young Adult Fiction ', 1997),
('Little Women ', 'Louisa May Alcott','Classic/Fiction ', 1968),
('The Fault in Our Stars ', 'John Green','Young Adult/Romance ', 2012),
('A Tale of Two Cities ', 'Charles Dickens','Historical Fiction ', 1959),
('The Shining ', 'Stephen King','Horror/Fiction ', 1977),
('The Hitchhiker\'s Guide to the Galaxy ', 'Douglas Adams','Science Fiction/Comedy ', 1979),
('Catch-22 ', 'Joseph Heller','Satire/Fiction ', 1961),
('The Bell Jar ', 'Sylvia Plath','Autobiographical Novel/Fiction ', 1963),
('Slaughterhouse-Five ', 'Kurt Vonnegut','Science Fiction/War Novel ', 1969),
('One Hundred Years of Solitude ', 'Gabriel García Márquez','Magical Realism/Fiction ', 1967),
('The Secret Garden ', 'Frances Hodgson Burnett','Children\'s Literature/Fiction ', 1911),
('A Clockwork Orange ', 'Anthony Burgess','Dystopian Science Fiction/Fiction ', 1962),
('The Color Purple ', 'Alice Walker','Epistolary Novel/Fiction ', 1982),
('Siddhartha ', 'Hermann Hesse','Philosophical Novel/Fiction ', 1922),
('The Old Man and the Sea ', 'Ernest Hemingway','Novella/Fiction ', 1952),
('Rebecca ', 'Daphne du Maurier','Gothic Novel/Fiction ', 1938),
('Emma ', 'Jane Austen','Romance/Fiction ', 1915),
('Dracula ', 'Bram Stoker','Gothic Horror Novel/Fiction ', 1997),
('The Sound and the Fury ', 'William Faulkner','Southern Gothic/Fiction ', 1929),
('Of Mice and Men ', 'John Steinbeck','Novella/Fiction ', 1937),
('Bumi Manusia', 'Pramoedya Ananta Toer', 'Historical Fiction', 1980),
('Max Havelaar', 'Multatuli', 'Classic', 1960),
('Sitti Nurbaya', 'Marah Rusli', 'Romance', 1922),
('Belenggu', 'Armijn Pane', 'Psychological Fiction', 1940),
('Beauty Is a Wound', 'Eka Kurniawan', 'Magical Realism', 2002),
('Robohnya Surau Kami', 'Ali Akbar Navis', 'Short Stories', 1956),
('Laskar Pelangi', 'Andrea Hirata', 'Coming-of-Age Fiction', 2005),
('Man Tiger', 'Eka Kurniawan', 'Literary Fiction', 2004),
('The Dancer', 'Kuntowijoyo', 'Fiction', 1999),
('The Sea Speaks His Name', 'Leila Chudori', 'Historical Fiction', 2017),
('Negeri 5 Menara', 'A. Fuadi', 'Young Adult Fiction', 2009),
('Before Dawn: The Poetry of Sapardi Djoko Damono', 'Sapardi Djoko Damono', 'Poetry', 2005),
('The Girl from the Coast', 'Pramoedya Ananta Toer', 'Novel', 2002),
('Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'Dee Lestari', 'Fantasy Fiction', 2001),
('Bumi Manusia', 'Pramoedya Ananta Toer', 'Historical Fiction', 1980),
('Max Havelaar', 'Multatuli', 'Classic', 1960),
('Sitti Nurbaya', 'Marah Rusli', 'Romance', 1922),
('Belenggu', 'Armijn Pane', 'Psychological Fiction', 1940),
('Beauty Is a Wound', 'Eka Kurniawan', 'Magical Realism', 2002),
('Robohnya Surau Kami', 'Ali Akbar Navis', 'Short Stories', 1956),
('Laskar Pelangi', 'Andrea Hirata', 'Coming-of-Age Fiction', 2005),
('Man Tiger', 'Eka Kurniawan', 'Literary Fiction', 2004),
('The Dancer', 'Kuntowijoyo', 'Fiction', 1999),
('The Sea Speaks His Name', 'Leila Chudori', 'Historical Fiction', 2017),
('Negeri 5 Menara', 'A. Fuadi', 'Young Adult Fiction', 2009),
('Before Dawn: The Poetry of Sapardi Djoko Damono', 'Sapardi Djoko Damono', 'Poetry', 2005),
('The Girl from the Coast', 'Pramoedya Ananta Toer', 'Novel', 2002),
('Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'Dee Lestari', 'Fantasy Fiction', 2001);

INSERT INTO Members (name, email, phone_number) VALUES
('Andi Setiawan', 'andi.setiawan@example.com', '081234567890'),
('Siti Nurhaliza', 'siti.nurhaliza@example.com', '082345678901'),
('Maya Sari', 'maya.sari@example.com', '086789012345'),
('Agus Prabowo', 'agus.prabowo@example.com', '087890123456'),
('Indah Permata', 'indah.permata@example.com', '088901234567'),
('Fajar Nugroho', 'fajar.nugroho@example.com', '089012345678'),
('Lina Anggraini', 'lina.anggraini@example.com', '081098765432'),
('Eko Susanto', 'eko.susanto@example.com', '082109876543'),
('Nina Amalia', 'nina.amalia@example.com', '083210987654'),
('Rizky Ramadhan', 'rizky.ramadhan@example.com', '084321098765'),
('Tina Melati', 'tina.melati@example.com', '085432109876'),
('Sari Wulandari', 'sari.wulandari@example.com', '087654321098'),
('Yudi Saputra', 'yudi.saputra@example.com', '088765432109'),
('Vina Kurniawati', 'vina.kurniawati@example.com', '089876543210'),
('Rina Fitriani', 'rina.fitriani@example.com', '081234567891'),
('Arief Rahman Hakim', 'arief.hakim@example.com', '082345678902');

INSERT INTO Loans (member_id, book_id, loan_date, due_date, return_date) VALUES
(1, 1, '2025-03-01', '2025-03-15', '2025-03-14'), 
(2, 2, '2025-03-02', '2025-03-16', NULL), 
(3, 3, '2025-03-05', '2025-03-19', '2025-03-18'), 
(4, 4, '2025-03-10', '2025-03-24', NULL), 
(1, 5, '2025-03-12', '2025-03-26', NULL), 
(2, 6, '2025-03-15', '2025-03-29', '2025-03-28'), 
(3, 7, '2025-03-18', '2025-04-01', NULL), 
(4, 8, '2025-03-20', '2025-04-03', NULL), 
(1, 9, '2025-03-22', '2025-04-06', NULL), 
(2, 10, '2025-03-25', '2025-04-09', NULL), 
(3, 11, '2025-03-28', '2025-04-12', NULL), 
(4, 12, '2025-04-01', '2025-04-15', NULL), 
(1, 13, '2025-04-02', '2025-04-16', NULL), 
(2, 14, '2025-04-05', '2025-04-19', NULL), 
(3, 15, '2025-04-08', '2025-04-22', NULL);
