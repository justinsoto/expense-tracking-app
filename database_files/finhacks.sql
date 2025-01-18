CREATE DATABASE IF NOT EXISTS `finhacks`;
USE finhacks;

-- Create Users Table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(200) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone VARCHAR(15) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Accounts Table
CREATE TABLE Accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    bank VARCHAR(100) NOT NULL,
    account_type ENUM('Checkings', 'Savings') NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

-- Create Transactions Table
CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    account_id INT NOT NULL,
    category VARCHAR(100) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    transaction_type ENUM('Payments', 'Receipts') NOT NULL,
    date DATE NOT NULL,
    company VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id) ON DELETE CASCADE
);

-- Create Categories Table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create Budgets Table
CREATE TABLE Budgets (
    budget_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    category_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE SET NULL
);

-- Create Reports Table
CREATE TABLE Reports (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

insert into Users (user_id, username, first_name, last_name, email, phone, password) values (1, 'wjewes0', 'Wilow', 'Jewes', 'wjewes0@merriam-webster.com', '934-575-4435', 'cT4"X`FqFx\XN');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (2, 'lchevins1', 'Laverna', 'Chevins', 'lchevins1@naver.com', '402-117-8888', 'vT1&ye|.dty');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (3, 'chedlestone2', 'Carolyn', 'Hedlestone', 'chedlestone2@pagesperso-orange.fr', '162-846-9391', 'zJ6@Wb"P0&@');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (4, 'jthomsson3', 'Joey', 'Thomsson', 'jthomsson3@sakura.ne.jp', '848-703-3309', 'wD9$j,<i(,30eb');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (5, 'mwest4', 'Miranda', 'West', 'mwest4@liveinternet.ru', '219-572-6174', 'fJ5_jZ4KTfqom7)u');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (6, 'dmorando5', 'Delora', 'Morando', 'dmorando5@latimes.com', '578-890-1433', 'sX9#JKd9{DrA');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (7, 'eassiratti6', 'Evy', 'Assiratti', 'eassiratti6@europa.eu', '951-472-2030', 'zB8_+P"B%');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (8, 'acampanelle7', 'Afton', 'Campanelle', 'acampanelle7@toplist.cz', '527-883-3830', 'zF4?GKD!0vM_I');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (9, 'awaren8', 'Alvin', 'Waren', 'awaren8@businessinsider.com', '852-311-5257', 'kT3)4*Btw7JYWf');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (10, 'tfilchakov9', 'Tabbatha', 'Filchakov', 'tfilchakov9@uol.com.br', '953-160-3281', 'sP7&\/|?~Ij');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (11, 'wmanthaa', 'Waverly', 'Mantha', 'wmanthaa@reuters.com', '460-262-3718', 'tO5,,~}FSh?"4Is');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (12, 'lchallaceb', 'Lorianna', 'Challace', 'lchallaceb@constantcontact.com', '315-672-7873', 'uR9+YV#Y=Tb1wJb4');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (13, 'pblakestonc', 'Pearl', 'Blakeston', 'pblakestonc@t.co', '721-328-9151', 'qT5''_G{nu?c');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (14, 'qeneverd', 'Quintilla', 'Enever', 'qeneverd@friendfeed.com', '934-964-1858', 'aC0%>~Hb8*(');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (15, 'morrette', 'Martin', 'Orrett', 'morrette@soundcloud.com', '545-630-1071', 'cH9)''z.@?|CAe');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (16, 'aheynsf', 'Amy', 'Heyns', 'aheynsf@bing.com', '888-686-6535', 'bJ9"(WpPC#9');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (17, 'vtelezhking', 'Velma', 'Telezhkin', 'vtelezhking@ehow.com', '767-131-5751', 'fV3"{JE}v\zz/iR>');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (18, 'apymerh', 'Aldric', 'Pymer', 'apymerh@opera.com', '722-241-6141', 'gL6$<)Hp_~s27');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (19, 'jmabbitti', 'Joe', 'Mabbitt', 'jmabbitti@google.co.jp', '238-647-3455', 'gC7~,EJ/h)w');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (20, 'sbriscowj', 'Stace', 'Briscow', 'sbriscowj@people.com.cn', '701-410-4615', 'hT7}0qi8m,kyz');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (21, 'bhowbrookk', 'Blaine', 'Howbrook', 'bhowbrookk@ehow.com', '888-636-4096', 'zO1,tcyiC!OL');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (22, 'sradloffl', 'Selinda', 'Radloff', 'sradloffl@sciencedaily.com', '566-376-1741', 'oV9)UlhH%');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (23, 'vbourrelm', 'Vivienne', 'Bourrel', 'vbourrelm@sohu.com', '330-661-8494', 'hU4?*U?rWit~im,a');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (24, 'pmaldinn', 'Pincas', 'Maldin', 'pmaldinn@slideshare.net', '839-570-1111', 'tD6.aR(\WK');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (25, 'thalfhydeo', 'Tabbitha', 'Halfhyde', 'thalfhydeo@exblog.jp', '737-655-5092', 'cM1(eQTj.UX8w''9X');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (26, 'lmackiesonp', 'Lulu', 'Mackieson', 'lmackiesonp@imgur.com', '259-906-8317', 'bK9">I%gpg5rRnE');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (27, 'dferierq', 'Dedie', 'Ferier', 'dferierq@dyndns.org', '358-867-3310', 'sE1"T{JVS');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (28, 'dgoodbarrr', 'Diane', 'Goodbarr', 'dgoodbarrr@businessinsider.com', '108-508-8289', 'rG0"f(xRNsX');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (29, 'tverrells', 'Teodoro', 'Verrell', 'tverrells@va.gov', '450-939-0216', 'sL3`mJQea');
insert into Users (user_id, username, first_name, last_name, email, phone, password) values (30, 'avenablest', 'Angelina', 'Venables', 'avenablest@sohu.com', '680-378-3798', 'qW1(PgycgyhYrn<');



insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (1, 1, 'Keane', 'Kubat', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (2, 2, 'Gray', 'Lovegrove', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (3, 3, 'Ema', 'Jeanel', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (4, 4, 'Taite', 'Gatch', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (5, 5, 'Keri', 'Dunnan', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (6, 6, 'Kirsteni', 'Corsan', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (7, 7, 'Derk', 'Moran', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (8, 8, 'Torr', 'Ayris', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (9, 9, 'Devora', 'Hush', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (10, 10, 'Gerome', 'Beckford', 'Chase', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (11, 11, 'Leticia', 'Baigrie', 'Bank of America', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (12, 12, 'Kimberley', 'Crowdson', 'Bank of America', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (13, 13, 'Stanley', 'Wennington', 'Bank of America', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (14, 14, 'Paco', 'Lambal', 'Bank of America', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (15, 15, 'Kendal', 'Tumber', 'Bank of America', 'Checkings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (16, 16, 'Eden', 'Clewley', 'Bank of America', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (17, 17, 'Joe', 'Hambright', 'Bank of America', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (18, 18, 'Izzy', 'Enga', 'Bank of America', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (19, 19, 'Debbie', 'Rymour', 'Bank of America', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (20, 20, 'Sherrie', 'Filyashin', 'Bank of America', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (21, 21, 'Bree', 'Verchambre', 'TD Bank', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (22, 22, 'Katrinka', 'Burtwhistle', 'TD Bank', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (23, 23, 'Sascha', 'Belfelt', 'TD Bank', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (24, 24, 'Piggy', 'Kettles', 'TD Bank', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (25, 25, 'Estrella', 'Courcey', 'TD Bank', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (26, 26, 'Carlye', 'Richardson', 'TD Bank', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (27, 27, 'Bessy', 'Schrir', 'TD Bank', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (28, 28, 'Miriam', 'Seear', 'TD Bank', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (29, 29, 'Chaunce', 'Chaplin', 'TD Bank', 'Savings');
insert into Accounts (account_id, user_id, first_name, last_name, bank, account_type) values (30, 30, 'Zara', 'Sheron', 'TD Bank', 'Savings');



insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (1, 1, 1, 'Garden', 2488, 'Receipts', '2024-10-09', 'Jabbertype');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (2, 2, 2, 'Sports', 2017, 'Receipts', '2024-11-24', 'Wikibox');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (3, 3, 3, 'Electronics', 3636, 'Receipts', '2024-03-07', 'Vinder');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (4, 4, 4, 'Games', 261, 'Receipts', '2024-10-17', 'InnoZ');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (5, 5, 5, 'Tools', 1549, 'Receipts', '2024-03-19', 'Myworks');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (6, 6, 6, 'Home', 1672, 'Receipts', '2024-08-15', 'Trunyx');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (7, 7, 7, 'Toys', 4570, 'Receipts', '2024-01-27', 'Dabshots');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (8, 8, 8, 'Kids', 3353, 'Receipts', '2024-04-14', 'Wikivu');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (9, 9, 9, 'Health', 3087, 'Receipts', '2024-07-14', 'Mydeo');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (10, 10, 10, 'Clothing', 4693, 'Receipts', '2024-09-04', 'Bubbletube');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (11, 11, 11, 'Baby', 4187, 'Receipts', '2024-11-30', 'Latz');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (12, 12, 12, 'Grocery', 487, 'Receipts', '2024-02-01', 'Eabox');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (13, 13, 13, 'Beauty', 1583, 'Receipts', '2025-01-16', 'Flashpoint');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (14, 14, 14, 'Home', 2740, 'Receipts', '2025-01-09', 'Vinder');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (15, 15, 15, 'Music', 134, 'Receipts', '2024-07-31', 'Meetz');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (16, 16, 16, 'Movies', 4617, 'Payments', '2024-10-06', 'Flashpoint');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (17, 17, 17, 'Jewelry', 2543, 'Payments', '2024-07-24', 'Tazz');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (18, 18, 18, 'Baby', 2265, 'Payments', '2024-04-18', 'Wordify');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (19, 19, 19, 'Clothing', 3392, 'Payments', '2024-04-15', 'Devpulse');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (20, 20, 20, 'Tools', 1665, 'Payments', '2024-09-07', 'Jetpulse');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (21, 21, 21, 'Home', 566, 'Payments', '2024-12-08', 'Muxo');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (22, 22, 22, 'Sports', 366, 'Payments', '2024-08-03', 'Talane');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (23, 23, 23, 'Automotive', 2569, 'Payments', '2024-02-27', 'Trudeo');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (24, 24, 24, 'Beauty', 4748, 'Payments', '2024-10-17', 'Buzzshare');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (25, 25, 25, 'Tools', 2692, 'Payments', '2024-04-30', 'Fiveclub');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (26, 26, 26, 'Beauty', 2457, 'Payments', '2025-01-10', 'Meetz');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (27, 27, 27, 'Computers', 801, 'Payments', '2024-09-24', 'Twiyo');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (28, 28, 28, 'Music', 4291, 'Payments', '2024-10-29', 'Geba');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (29, 29, 29, 'Games', 3487, 'Payments', '2024-03-14', 'Voomm');
insert into Transactions (transaction_id, user_id, account_id, category, amount, transaction_type, date, company) values (30, 30, 30, 'Computers', 4937, 'Payments', '2024-11-12', 'Thoughtbeat');



insert into Categories (category_id, name) values (1, 'Clothing');
insert into Categories (category_id, name) values (2, 'Books');
insert into Categories (category_id, name) values (3, 'Health');
insert into Categories (category_id, name) values (4, 'Home');
insert into Categories (category_id, name) values (5, 'Computers');
insert into Categories (category_id, name) values (6, 'Sports');
insert into Categories (category_id, name) values (7, 'Movies');
insert into Categories (category_id, name) values (8, 'Baby');
insert into Categories (category_id, name) values (9, 'Toys');
insert into Categories (category_id, name) values (10, 'Baby');
insert into Categories (category_id, name) values (11, 'Garden');
insert into Categories (category_id, name) values (12, 'Music');
insert into Categories (category_id, name) values (13, 'Health');
insert into Categories (category_id, name) values (14, 'Kids');
insert into Categories (category_id, name) values (15, 'Movies');
insert into Categories (category_id, name) values (16, 'Industrial');
insert into Categories (category_id, name) values (17, 'Games');
insert into Categories (category_id, name) values (18, 'Jewelry');
insert into Categories (category_id, name) values (19, 'Jewelry');
insert into Categories (category_id, name) values (20, 'Sports');
insert into Categories (category_id, name) values (21, 'Movies');
insert into Categories (category_id, name) values (22, 'Home');
insert into Categories (category_id, name) values (23, 'Sports');
insert into Categories (category_id, name) values (24, 'Clothing');
insert into Categories (category_id, name) values (25, 'Tools');
insert into Categories (category_id, name) values (26, 'Clothing');
insert into Categories (category_id, name) values (27, 'Tools');
insert into Categories (category_id, name) values (28, 'Games');
insert into Categories (category_id, name) values (29, 'Movies');
insert into Categories (category_id, name) values (30, 'Electronics');



insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (1, 1, 1, 75306, '2024-08-11', '2024-03-07');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (2, 2, 2, 39552, '2024-11-19', '2024-07-08');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (3, 3, 3, 82677, '2024-09-22', '2024-10-13');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (4, 4, 4, 8177, '2024-07-26', '2024-01-22');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (5, 5, 5, 27240, '2024-11-28', '2024-01-22');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (6, 6, 6, 18115, '2024-07-16', '2024-08-05');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (7, 7, 7, 91580, '2024-11-15', '2024-03-12');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (8, 8, 8, 89480, '2024-10-30', '2024-02-05');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (9, 9, 9, 60079, '2024-09-19', '2024-09-10');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (10, 10, 10, 80950, '2024-06-12', '2024-05-09');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (11, 11, 11, 34852, '2024-03-25', '2024-11-28');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (12, 12, 12, 15152, '2024-10-14', '2024-02-14');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (13, 13, 13, 81451, '2024-02-12', '2024-08-30');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (14, 14, 14, 51731, '2024-06-25', '2024-12-01');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (15, 15, 15, 50965, '2024-05-13', '2024-11-12');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (16, 16, 16, 61072, '2024-08-08', '2025-01-08');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (17, 17, 17, 25726, '2024-03-02', '2024-10-12');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (18, 18, 18, 92696, '2024-09-18', '2024-07-15');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (19, 19, 19, 1471, '2025-01-17', '2024-01-26');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (20, 20, 20, 80249, '2024-08-28', '2024-11-24');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (21, 21, 21, 69731, '2024-06-11', '2024-08-06');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (22, 22, 22, 31848, '2024-07-09', '2024-05-16');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (23, 23, 23, 25458, '2024-11-14', '2024-04-23');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (24, 24, 24, 9773, '2024-07-23', '2024-11-08');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (25, 25, 25, 86757, '2024-02-21', '2024-03-10');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (26, 26, 26, 24406, '2024-01-27', '2024-06-06');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (27, 27, 27, 33505, '2024-07-21', '2025-01-06');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (28, 28, 28, 49520, '2024-04-15', '2024-08-09');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (29, 29, 29, 88819, '2024-08-11', '2024-02-18');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (30, 30, 30, 10299, '2024-04-27', '2024-09-29');



insert into Reports (report_id, user_id, title, content) values (1, 1, 'Kids', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.');
insert into Reports (report_id, user_id, title, content) values (2, 2, 'Music', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.');
insert into Reports (report_id, user_id, title, content) values (3, 3, 'Music', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
insert into Reports (report_id, user_id, title, content) values (4, 4, 'Computers', 'Maecenas rhoncus aliquam lacus.');
insert into Reports (report_id, user_id, title, content) values (5, 5, 'Garden', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.');
insert into Reports (report_id, user_id, title, content) values (6, 6, 'Garden', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.');
insert into Reports (report_id, user_id, title, content) values (7, 7, 'Health', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into Reports (report_id, user_id, title, content) values (8, 8, 'Toys', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into Reports (report_id, user_id, title, content) values (9, 9, 'Home', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into Reports (report_id, user_id, title, content) values (10, 10, 'Garden', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into Reports (report_id, user_id, title, content) values (11, 11, 'Garden', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into Reports (report_id, user_id, title, content) values (12, 12, 'Clothing', 'Duis aliquam convallis nunc.');
insert into Reports (report_id, user_id, title, content) values (13, 13, 'Clothing', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.');
insert into Reports (report_id, user_id, title, content) values (14, 14, 'Books', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.');
insert into Reports (report_id, user_id, title, content) values (15, 15, 'Toys', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.');
insert into Reports (report_id, user_id, title, content) values (16, 16, 'Kids', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into Reports (report_id, user_id, title, content) values (17, 17, 'Clothing', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.');
insert into Reports (report_id, user_id, title, content) values (18, 18, 'Garden', 'Integer non velit.');
insert into Reports (report_id, user_id, title, content) values (19, 19, 'Tools', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.');
insert into Reports (report_id, user_id, title, content) values (20, 20, 'Electronics', 'Nam tristique tortor eu pede.');
insert into Reports (report_id, user_id, title, content) values (21, 21, 'Grocery', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.');
insert into Reports (report_id, user_id, title, content) values (22, 22, 'Toys', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into Reports (report_id, user_id, title, content) values (23, 23, 'Toys', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into Reports (report_id, user_id, title, content) values (24, 24, 'Electronics', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into Reports (report_id, user_id, title, content) values (25, 25, 'Tools', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.');
insert into Reports (report_id, user_id, title, content) values (26, 26, 'Electronics', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into Reports (report_id, user_id, title, content) values (27, 27, 'Home', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into Reports (report_id, user_id, title, content) values (28, 28, 'Grocery', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.');
insert into Reports (report_id, user_id, title, content) values (29, 29, 'Computers', 'Curabitur gravida nisi at nibh.');
insert into Reports (report_id, user_id, title, content) values (30, 30, 'Sports', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.');

