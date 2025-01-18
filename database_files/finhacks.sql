CREATE DATABASE IF NOT EXISTS `finhacks`;
USE finhacks;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE PaymentMethods (
    payment_method_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    date DATE NOT NULL,
    category_id INT,
    payment_method_id INT,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE SET NULL,
    FOREIGN KEY (payment_method_id) REFERENCES PaymentMethods(payment_method_id) ON DELETE SET NULL
);

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

CREATE TABLE Reports (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

insert into Users (user_id, name, first_name, last_name, email, password) values (1, 'hpentycost0', 'Harlin', 'Pentycost', 'hpentycost0@weather.com', 'yR1~"zog`@U|*\Xd');
insert into Users (user_id, name, first_name, last_name, email, password) values (2, 'sbilam1', 'Sybyl', 'Bilam', 'sbilam1@tuttocitta.it', 'gA4|cX})jo.&x');
insert into Users (user_id, name, first_name, last_name, email, password) values (3, 'mscyner2', 'Meggie', 'Scyner', 'mscyner2@merriam-webster.com', 'nK0\x`)(W1K');
insert into Users (user_id, name, first_name, last_name, email, password) values (4, 'sburger3', 'Sullivan', 'Burger', 'sburger3@ning.com', 'jA9#)/t3&Y');
insert into Users (user_id, name, first_name, last_name, email, password) values (5, 'omcmullen4', 'Ogdon', 'McMullen', 'omcmullen4@latimes.com', 'pS0${U8M');
insert into Users (user_id, name, first_name, last_name, email, password) values (6, 'dvahey5', 'Dehlia', 'Vahey', 'dvahey5@blog.com', 'zJ9{my/cS%vy');
insert into Users (user_id, name, first_name, last_name, email, password) values (7, 'mbrinicombe6', 'Maisie', 'Brinicombe', 'mbrinicombe6@usgs.gov', 'zF6%h''ub');
insert into Users (user_id, name, first_name, last_name, email, password) values (8, 'ssparkwell7', 'Solly', 'Sparkwell', 'ssparkwell7@sciencedaily.com', 'fD0''}V~1Y');
insert into Users (user_id, name, first_name, last_name, email, password) values (9, 'pherche8', 'Perry', 'Herche', 'pherche8@theguardian.com', 'rA3<F@4wY7||L`VK');
insert into Users (user_id, name, first_name, last_name, email, password) values (10, 'bfoard9', 'Brodie', 'Foard', 'bfoard9@telegraph.co.uk', 'cH2+#0wS');
insert into Users (user_id, name, first_name, last_name, email, password) values (11, 'lmaryotta', 'Lenora', 'Maryott', 'lmaryotta@artisteer.com', 'lO6?uCO.7ok{`t*');
insert into Users (user_id, name, first_name, last_name, email, password) values (12, 'calbertib', 'Catriona', 'Alberti', 'calbertib@auda.org.au', 'rA9%7jsozKaHkh');
insert into Users (user_id, name, first_name, last_name, email, password) values (13, 'hmckyrrellyc', 'Hedy', 'McKyrrelly', 'hmckyrrellyc@hibu.com', 'jM2"W.{/$8558FC');
insert into Users (user_id, name, first_name, last_name, email, password) values (14, 'fclaraged', 'Frans', 'Clarage', 'fclaraged@sbwire.com', 'yL8.r`)o*7cjZW');
insert into Users (user_id, name, first_name, last_name, email, password) values (15, 'apilkingtone', 'Armando', 'Pilkington', 'apilkingtone@surveymonkey.com', 'oX5)4MD7N');
insert into Users (user_id, name, first_name, last_name, email, password) values (16, 'mocurriganf', 'Melessa', 'O''Currigan', 'mocurriganf@exblog.jp', 'fL3\z,(wwIe');
insert into Users (user_id, name, first_name, last_name, email, password) values (17, 'gcrehang', 'Gualterio', 'Crehan', 'gcrehang@weather.com', 'aF7)"l77Tv');
insert into Users (user_id, name, first_name, last_name, email, password) values (18, 'vboothh', 'Vinny', 'Booth', 'vboothh@yale.edu', 'vF0|g<VoZ');
insert into Users (user_id, name, first_name, last_name, email, password) values (19, 'bvollami', 'Blisse', 'Vollam', 'bvollami@europa.eu', 'jF8!tzVX2_g');
insert into Users (user_id, name, first_name, last_name, email, password) values (20, 'qgayforthj', 'Quintus', 'Gayforth', 'qgayforthj@craigslist.org', 'bL9*u4hB8}');
insert into Users (user_id, name, first_name, last_name, email, password) values (21, 'gcloutek', 'Gerhardine', 'Cloute', 'gcloutek@posterous.com', 'zZ3%*MG''W');
insert into Users (user_id, name, first_name, last_name, email, password) values (22, 'evonasekl', 'Ezri', 'Vonasek', 'evonasekl@seattletimes.com', 'qX6+E.i5.');
insert into Users (user_id, name, first_name, last_name, email, password) values (23, 'dfortem', 'Dukey', 'Forte', 'dfortem@ed.gov', 'oL7%AF!9b''');
insert into Users (user_id, name, first_name, last_name, email, password) values (24, 'obullochn', 'Orlan', 'Bulloch', 'obullochn@state.gov', 'zF0`?bRniBv2N?G#');
insert into Users (user_id, name, first_name, last_name, email, password) values (25, 'lcasheno', 'Lazar', 'Cashen', 'lcasheno@hp.com', 'yI9"iiaoy9');
insert into Users (user_id, name, first_name, last_name, email, password) values (26, 'ccrallanp', 'Crissie', 'Crallan', 'ccrallanp@phpbb.com', 'gW4#M8)dj@l1');
insert into Users (user_id, name, first_name, last_name, email, password) values (27, 'snoteq', 'Salvador', 'Note', 'snoteq@mit.edu', 'fS9\_EYg#&UAG/<');
insert into Users (user_id, name, first_name, last_name, email, password) values (28, 'adohmerr', 'Agata', 'Dohmer', 'adohmerr@prlog.org', 'wS8)Wo/L''');
insert into Users (user_id, name, first_name, last_name, email, password) values (29, 'eourys', 'Eamon', 'Oury', 'eourys@4shared.com', 'xK1+b?t6Ni');
insert into Users (user_id, name, first_name, last_name, email, password) values (30, 'ysambalst', 'Yardley', 'Sambals', 'ysambalst@dedecms.com', 'jX0"!uoUVTDV');
insert into Users (user_id, name, first_name, last_name, email, password) values (31, 'cbehnu', 'Celine', 'Behn', 'cbehnu@mtv.com', 'eK6)srXwn');
insert into Users (user_id, name, first_name, last_name, email, password) values (32, 'omatthewsv', 'Odessa', 'Matthews', 'omatthewsv@phpbb.com', 'iF5.u|D#uVV@X}');
insert into Users (user_id, name, first_name, last_name, email, password) values (33, 'reastwoodw', 'Roshelle', 'Eastwood', 'reastwoodw@indiatimes.com', 'yX2=9a}<!*');
insert into Users (user_id, name, first_name, last_name, email, password) values (34, 'cthallerx', 'Clarke', 'Thaller', 'cthallerx@smh.com.au', 'rS5>Pwk.|');
insert into Users (user_id, name, first_name, last_name, email, password) values (35, 'sbehny', 'Scarface', 'Behn', 'sbehny@umn.edu', 'dQ1\fzi*92Mu$');
insert into Users (user_id, name, first_name, last_name, email, password) values (36, 'ebrownlowz', 'Elsy', 'Brownlow', 'ebrownlowz@theguardian.com', 'qH6|P7#g)');
insert into Users (user_id, name, first_name, last_name, email, password) values (37, 'skhristyukhin10', 'Selle', 'Khristyukhin', 'skhristyukhin10@google.de', 'aJ3&fK6cZcXoPs"');
insert into Users (user_id, name, first_name, last_name, email, password) values (38, 'frummings11', 'Fred', 'Rummings', 'frummings11@furl.net', 'kZ6\&l2V)CnA?N~3');
insert into Users (user_id, name, first_name, last_name, email, password) values (39, 'rfoulser12', 'Rozanna', 'Foulser', 'rfoulser12@timesonline.co.uk', 'kN3@T$Te,H');
insert into Users (user_id, name, first_name, last_name, email, password) values (40, 'dwardley13', 'Darrick', 'Wardley', 'dwardley13@free.fr', 'gQ7|AW6of');
insert into Users (user_id, name, first_name, last_name, email, password) values (41, 'asemor14', 'Alene', 'Semor', 'asemor14@shop-pro.jp', 'sE2_=c+t)\F{Yr');
insert into Users (user_id, name, first_name, last_name, email, password) values (42, 'nbutterwick15', 'Nicolas', 'Butterwick', 'nbutterwick15@ycombinator.com', 'pN1.*CQ9DOh0.');
insert into Users (user_id, name, first_name, last_name, email, password) values (43, 'ecassely16', 'Em', 'Cassely', 'ecassely16@umich.edu', 'pA8%gFmR_!');
insert into Users (user_id, name, first_name, last_name, email, password) values (44, 'mlittefair17', 'Meridith', 'Littefair', 'mlittefair17@gov.uk', 'rM3}H&aQ|');
insert into Users (user_id, name, first_name, last_name, email, password) values (45, 'ppauer18', 'Portia', 'Pauer', 'ppauer18@oaic.gov.au', 'yM6!~H8.');
insert into Users (user_id, name, first_name, last_name, email, password) values (46, 'gdassindale19', 'Gretel', 'Dassindale', 'gdassindale19@example.com', 'gV7`kracS');
insert into Users (user_id, name, first_name, last_name, email, password) values (47, 'wlowson1a', 'Waverley', 'Lowson', 'wlowson1a@wikia.com', 'bZ4!q=ytOgoSW/C');
insert into Users (user_id, name, first_name, last_name, email, password) values (48, 'dwedderburn1b', 'Desiri', 'Wedderburn', 'dwedderburn1b@google.co.uk', 'vN8/`''TS"0');
insert into Users (user_id, name, first_name, last_name, email, password) values (49, 'cjoutapaitis1c', 'Cherey', 'Joutapaitis', 'cjoutapaitis1c@dedecms.com', 'hD1"13)c');
insert into Users (user_id, name, first_name, last_name, email, password) values (50, 'jlengthorn1d', 'Jacenta', 'Lengthorn', 'jlengthorn1d@fastcompany.com', 'fQ4)#R1u}`~0!)');


insert into Categories (category_id, name, user_id) values (1, 'Grocery', 1);
insert into Categories (category_id, name, user_id) values (2, 'Movies', 2);
insert into Categories (category_id, name, user_id) values (3, 'Beauty', 3);
insert into Categories (category_id, name, user_id) values (4, 'Industrial', 4);
insert into Categories (category_id, name, user_id) values (5, 'Books', 5);
insert into Categories (category_id, name, user_id) values (6, 'Home', 6);
insert into Categories (category_id, name, user_id) values (7, 'Tools', 7);
insert into Categories (category_id, name, user_id) values (8, 'Outdoors', 8);
insert into Categories (category_id, name, user_id) values (9, 'Kids', 9);
insert into Categories (category_id, name, user_id) values (10, 'Tools', 10);
insert into Categories (category_id, name, user_id) values (11, 'Beauty', 11);
insert into Categories (category_id, name, user_id) values (12, 'Grocery', 12);
insert into Categories (category_id, name, user_id) values (13, 'Books', 13);
insert into Categories (category_id, name, user_id) values (14, 'Beauty', 14);
insert into Categories (category_id, name, user_id) values (15, 'Toys', 15);
insert into Categories (category_id, name, user_id) values (16, 'Kids', 16);
insert into Categories (category_id, name, user_id) values (17, 'Music', 17);
insert into Categories (category_id, name, user_id) values (18, 'Shoes', 18);
insert into Categories (category_id, name, user_id) values (19, 'Baby', 19);
insert into Categories (category_id, name, user_id) values (20, 'Computers', 20);
insert into Categories (category_id, name, user_id) values (21, 'Industrial', 21);
insert into Categories (category_id, name, user_id) values (22, 'Beauty', 22);
insert into Categories (category_id, name, user_id) values (23, 'Outdoors', 23);
insert into Categories (category_id, name, user_id) values (24, 'Beauty', 24);
insert into Categories (category_id, name, user_id) values (25, 'Health', 25);
insert into Categories (category_id, name, user_id) values (26, 'Automotive', 26);
insert into Categories (category_id, name, user_id) values (27, 'Tools', 27);
insert into Categories (category_id, name, user_id) values (28, 'Grocery', 28);
insert into Categories (category_id, name, user_id) values (29, 'Computers', 29);
insert into Categories (category_id, name, user_id) values (30, 'Movies', 30);
insert into Categories (category_id, name, user_id) values (31, 'Games', 31);
insert into Categories (category_id, name, user_id) values (32, 'Baby', 32);
insert into Categories (category_id, name, user_id) values (33, 'Games', 33);
insert into Categories (category_id, name, user_id) values (34, 'Tools', 34);
insert into Categories (category_id, name, user_id) values (35, 'Industrial', 35);
insert into Categories (category_id, name, user_id) values (36, 'Automotive', 36);
insert into Categories (category_id, name, user_id) values (37, 'Kids', 37);
insert into Categories (category_id, name, user_id) values (38, 'Beauty', 38);
insert into Categories (category_id, name, user_id) values (39, 'Grocery', 39);
insert into Categories (category_id, name, user_id) values (40, 'Beauty', 40);
insert into Categories (category_id, name, user_id) values (41, 'Grocery', 41);
insert into Categories (category_id, name, user_id) values (42, 'Games', 42);
insert into Categories (category_id, name, user_id) values (43, 'Electronics', 43);
insert into Categories (category_id, name, user_id) values (44, 'Automotive', 44);
insert into Categories (category_id, name, user_id) values (45, 'Clothing', 45);
insert into Categories (category_id, name, user_id) values (46, 'Automotive', 46);
insert into Categories (category_id, name, user_id) values (47, 'Music', 47);
insert into Categories (category_id, name, user_id) values (48, 'Music', 48);
insert into Categories (category_id, name, user_id) values (49, 'Outdoors', 49);
insert into Categories (category_id, name, user_id) values (50, 'Games', 50);

insert into PaymentMethods (payment_method_id, name, user_id) values (1, 'Stronghold', 1);
insert into PaymentMethods (payment_method_id, name, user_id) values (2, 'Asoka', 2);
insert into PaymentMethods (payment_method_id, name, user_id) values (3, 'Opela', 3);
insert into PaymentMethods (payment_method_id, name, user_id) values (4, 'Holdlamis', 4);
insert into PaymentMethods (payment_method_id, name, user_id) values (5, 'Tresom', 5);
insert into PaymentMethods (payment_method_id, name, user_id) values (6, 'Zoolab', 6);
insert into PaymentMethods (payment_method_id, name, user_id) values (7, 'Mat Lam Tam', 7);
insert into PaymentMethods (payment_method_id, name, user_id) values (8, 'Solarbreeze', 8);
insert into PaymentMethods (payment_method_id, name, user_id) values (9, 'Y-find', 9);
insert into PaymentMethods (payment_method_id, name, user_id) values (10, 'Keylex', 10);
insert into PaymentMethods (payment_method_id, name, user_id) values (11, 'Konklab', 11);
insert into PaymentMethods (payment_method_id, name, user_id) values (12, 'Kanlam', 12);
insert into PaymentMethods (payment_method_id, name, user_id) values (13, 'Voltsillam', 13);
insert into PaymentMethods (payment_method_id, name, user_id) values (14, 'Domainer', 14);
insert into PaymentMethods (payment_method_id, name, user_id) values (15, 'Tresom', 15);
insert into PaymentMethods (payment_method_id, name, user_id) values (16, 'Lotstring', 16);
insert into PaymentMethods (payment_method_id, name, user_id) values (17, 'Home Ing', 17);
insert into PaymentMethods (payment_method_id, name, user_id) values (18, 'Tres-Zap', 18);
insert into PaymentMethods (payment_method_id, name, user_id) values (19, 'Y-Solowarm', 19);
insert into PaymentMethods (payment_method_id, name, user_id) values (20, 'Keylex', 20);
insert into PaymentMethods (payment_method_id, name, user_id) values (21, 'Viva', 21);
insert into PaymentMethods (payment_method_id, name, user_id) values (22, 'Ventosanzap', 22);
insert into PaymentMethods (payment_method_id, name, user_id) values (23, 'Pannier', 23);
insert into PaymentMethods (payment_method_id, name, user_id) values (24, 'Asoka', 24);
insert into PaymentMethods (payment_method_id, name, user_id) values (25, 'Toughjoyfax', 25);
insert into PaymentMethods (payment_method_id, name, user_id) values (26, 'Bitchip', 26);
insert into PaymentMethods (payment_method_id, name, user_id) values (27, 'Keylex', 27);
insert into PaymentMethods (payment_method_id, name, user_id) values (28, 'Tin', 28);
insert into PaymentMethods (payment_method_id, name, user_id) values (29, 'Solarbreeze', 29);
insert into PaymentMethods (payment_method_id, name, user_id) values (30, 'Lotstring', 30);
insert into PaymentMethods (payment_method_id, name, user_id) values (31, 'Domainer', 31);
insert into PaymentMethods (payment_method_id, name, user_id) values (32, 'Overhold', 32);
insert into PaymentMethods (payment_method_id, name, user_id) values (33, 'Prodder', 33);
insert into PaymentMethods (payment_method_id, name, user_id) values (34, 'Job', 34);
insert into PaymentMethods (payment_method_id, name, user_id) values (35, 'Rank', 35);
insert into PaymentMethods (payment_method_id, name, user_id) values (36, 'Tempsoft', 36);
insert into PaymentMethods (payment_method_id, name, user_id) values (37, 'Domainer', 37);
insert into PaymentMethods (payment_method_id, name, user_id) values (38, 'Cardguard', 38);
insert into PaymentMethods (payment_method_id, name, user_id) values (39, 'Lotlux', 39);
insert into PaymentMethods (payment_method_id, name, user_id) values (40, 'Trippledex', 40);
insert into PaymentMethods (payment_method_id, name, user_id) values (41, 'Zontrax', 41);
insert into PaymentMethods (payment_method_id, name, user_id) values (42, 'Mat Lam Tam', 42);
insert into PaymentMethods (payment_method_id, name, user_id) values (43, 'Transcof', 43);
insert into PaymentMethods (payment_method_id, name, user_id) values (44, 'Cardify', 44);
insert into PaymentMethods (payment_method_id, name, user_id) values (45, 'Ventosanzap', 45);
insert into PaymentMethods (payment_method_id, name, user_id) values (46, 'Job', 46);
insert into PaymentMethods (payment_method_id, name, user_id) values (47, 'Zoolab', 47);
insert into PaymentMethods (payment_method_id, name, user_id) values (48, 'Voltsillam', 48);
insert into PaymentMethods (payment_method_id, name, user_id) values (49, 'Gembucket', 49);
insert into PaymentMethods (payment_method_id, name, user_id) values (50, 'Tempsoft', 50);

insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (1, 1, 771, '2024-07-04', 1, 1, 1);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (2, 2, 213, '2024-03-11', 2, 2, 2);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (3, 3, 529, '2024-11-17', 3, 3, 3);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (4, 4, 207, '2024-03-30', 4, 4, 4);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (5, 5, 634, '2024-10-20', 5, 5, 5);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (6, 6, 471, '2024-05-06', 6, 6, 6);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (7, 7, 584, '2025-01-14', 7, 7, 7);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (8, 8, 441, '2024-10-24', 8, 8, 8);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (9, 9, 607, '2024-09-26', 9, 9, 9);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (10, 10, 354, '2024-12-06', 10, 10, 10);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (11, 11, 88, '2024-08-23', 11, 11, 11);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (12, 12, 654, '2024-06-13', 12, 12, 12);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (13, 13, 721, '2024-12-19', 13, 13, 13);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (14, 14, 410, '2024-10-29', 14, 14, 14);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (15, 15, 865, '2024-12-15', 15, 15, 15);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (16, 16, 804, '2024-06-07', 16, 16, 16);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (17, 17, 280, '2024-05-21', 17, 17, 17);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (18, 18, 485, '2024-05-23', 18, 18, 18);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (19, 19, 839, '2024-08-21', 19, 19, 19);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (20, 20, 99, '2024-09-27', 20, 20, 20);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (21, 21, 480, '2024-02-20', 21, 21, 21);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (22, 22, 442, '2024-11-19', 22, 22, 22);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (23, 23, 102, '2024-12-18', 23, 23, 23);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (24, 24, 360, '2024-07-14', 24, 24, 24);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (25, 25, 273, '2024-01-29', 25, 25, 25);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (26, 26, 206, '2024-09-25', 26, 26, 26);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (27, 27, 85, '2024-07-09', 27, 27, 27);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (28, 28, 107, '2024-09-15', 28, 28, 28);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (29, 29, 835, '2024-03-02', 29, 29, 29);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (30, 30, 50, '2024-09-01', 30, 30, 30);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (31, 31, 418, '2024-10-31', 31, 31, 31);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (32, 32, 514, '2024-02-01', 32, 32, 32);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (33, 33, 380, '2024-05-06', 33, 33, 33);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (34, 34, 591, '2024-11-27', 34, 34, 34);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (35, 35, 343, '2024-01-25', 35, 35, 35);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (36, 36, 391, '2024-07-31', 36, 36, 36);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (37, 37, 71, '2024-09-14', 37, 37, 37);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (38, 38, 655, '2024-01-29', 38, 38, 38);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (39, 39, 796, '2024-05-04', 39, 39, 39);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (40, 40, 744, '2024-10-07', 40, 40, 40);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (41, 41, 671, '2024-05-03', 41, 41, 41);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (42, 42, 261, '2025-01-01', 42, 42, 42);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (43, 43, 82, '2025-01-06', 43, 43, 43);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (44, 44, 51, '2024-03-29', 44, 44, 44);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (45, 45, 652, '2024-02-23', 45, 45, 45);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (46, 46, 759, '2024-02-19', 46, 46, 46);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (47, 47, 689, '2024-08-30', 47, 47, 47);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (48, 48, 23, '2024-09-27', 48, 48, 48);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (49, 49, 567, '2024-10-19', 49, 49, 49);
insert into Expenses (expense_id, user_id, amount, date, category_id, payment_method_id, description) values (50, 50, 256, '2024-12-26', 50, 50, 50);


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
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (31, 31, 31, 87848, '2024-05-16', '2024-11-27');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (32, 32, 32, 97469, '2024-03-06', '2024-06-06');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (33, 33, 33, 60227, '2024-04-07', '2024-04-05');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (34, 34, 34, 79630, '2024-05-13', '2024-06-05');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (35, 35, 35, 28800, '2024-05-18', '2024-06-08');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (36, 36, 36, 52247, '2024-03-31', '2024-09-18');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (37, 37, 37, 54614, '2024-05-27', '2024-08-25');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (38, 38, 38, 245, '2024-06-07', '2024-05-30');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (39, 39, 39, 5324, '2024-02-19', '2024-08-10');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (40, 40, 40, 26954, '2024-05-10', '2024-03-11');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (41, 41, 41, 95068, '2024-11-16', '2024-01-22');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (42, 42, 42, 21825, '2024-12-15', '2024-07-11');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (43, 43, 43, 6559, '2024-05-28', '2024-10-04');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (44, 44, 44, 49365, '2024-12-24', '2024-04-22');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (45, 45, 45, 86196, '2024-06-24', '2024-09-09');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (46, 46, 46, 10344, '2024-05-11', '2024-08-05');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (47, 47, 47, 51347, '2024-12-26', '2024-09-21');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (48, 48, 48, 14674, '2024-07-27', '2024-07-30');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (49, 49, 49, 74880, '2024-06-10', '2024-05-12');
insert into Budgets (budget_id, user_id, category_id, amount, start_date, end_date) values (50, 50, 50, 81334, '2024-03-01', '2024-03-25');



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
insert into Reports (report_id, user_id, title, content) values (31, 31, 'Music', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
insert into Reports (report_id, user_id, title, content) values (32, 32, 'Sports', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo.');
insert into Reports (report_id, user_id, title, content) values (33, 33, 'Automotive', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into Reports (report_id, user_id, title, content) values (34, 34, 'Baby', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
insert into Reports (report_id, user_id, title, content) values (35, 35, 'Grocery', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.');
insert into Reports (report_id, user_id, title, content) values (36, 36, 'Outdoors', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.');
insert into Reports (report_id, user_id, title, content) values (37, 37, 'Sports', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into Reports (report_id, user_id, title, content) values (38, 38, 'Home', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.');
insert into Reports (report_id, user_id, title, content) values (39, 39, 'Computers', 'Nulla tempus.');
insert into Reports (report_id, user_id, title, content) values (40, 40, 'Toys', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.');
insert into Reports (report_id, user_id, title, content) values (41, 41, 'Garden', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.');
insert into Reports (report_id, user_id, title, content) values (42, 42, 'Home', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into Reports (report_id, user_id, title, content) values (43, 43, 'Tools', 'Suspendisse ornare consequat lectus.');
insert into Reports (report_id, user_id, title, content) values (44, 44, 'Beauty', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.');
insert into Reports (report_id, user_id, title, content) values (45, 45, 'Shoes', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into Reports (report_id, user_id, title, content) values (46, 46, 'Beauty', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
insert into Reports (report_id, user_id, title, content) values (47, 47, 'Jewelry', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.');
insert into Reports (report_id, user_id, title, content) values (48, 48, 'Industrial', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into Reports (report_id, user_id, title, content) values (49, 49, 'Beauty', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into Reports (report_id, user_id, title, content) values (50, 50, 'Garden', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
