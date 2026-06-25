
TRUNCATE student_enrollment, course_assignment, program_course, student,
         educator, class, education_leader, person_details, course, program,
         person, site RESTART IDENTITY CASCADE;

-- Grunddata: anläggningar

INSERT INTO site (site_code, site_name, city, address, postal_code, phone) VALUES
('GBG-A', 'YrkesCo Göteborg Nordstan', 'Göteborg', 'Norra Hamngatan 18', '41106', '031-440100'),
('GBG-B', 'YrkesCo Göteborg Lindholmen', 'Göteborg', 'Lindholmspiren 7', '41756', '031-440200'),
('STH-A', 'YrkesCo Stockholm City', 'Stockholm', 'Drottninggatan 88', '11136', '08-550100'),
('STH-B', 'YrkesCo Stockholm Globen', 'Stockholm', 'Arenavägen 33', '12177', '08-550200'),
('MAL-A', 'YrkesCo Malmö Västra Hamnen', 'Malmö', 'Stora Varvsgatan 14', '21119', '040-330100'),
('UPP-A', 'YrkesCo Uppsala Centrum', 'Uppsala', 'Bredgränd 6', '75320', '018-660100');

-- Personer

INSERT INTO person (first_name, last_name, person_type, birth_date) VALUES
-- Utbildningsledare
('Henrik', 'Lindqvist', 'education_leader', '1984-04-12'),
('Camilla', 'Strömberg', 'education_leader', '1979-09-03'),
('Nadia', 'Karimi', 'education_leader', '1986-01-27'),
('Marcus', 'Westin', 'education_leader', '1991-07-18'),
('Helena', 'Broman', 'education_leader', '1982-11-09'),

-- Utbildare
('Rickard', 'Forsell', 'educator', '1977-02-21'),
('Therese', 'Granlund', 'educator', '1969-06-14'),
('Jonas', 'Ekman', 'educator', '1974-12-02'),
('Miriam', 'Saeed', 'educator', '1983-05-19'),
('Patrik', 'Holmqvist', 'educator', '1988-10-08'),
('Elvira', 'Nordin', 'educator', '1990-03-25'),
('Kevin', 'Bergman', 'educator', '1993-08-16'),
('Samira', 'Kadir', 'educator', '1995-01-30'),
('Rasmus', 'Wikström', 'educator', '1996-04-11'),
('Olga', 'Petrova', 'educator', '1997-09-22'),
('Benjamin', 'Cole', 'educator', '1994-02-17'),
('Lucia', 'Romero', 'educator', '1995-12-05'),
('Elliot', 'Murphy', 'educator', '1992-07-13'),

-- Konsulter som personposter
('Tobias', 'Hellström', 'consultant', '1981-03-06'),
('Mona', 'Ismail', 'consultant', '1987-08-29'),
('Rebecka', 'Salazar', 'consultant', '1990-11-15'),
('Casper', 'Lindell', 'consultant', '1984-10-04'),
('Dalia', 'Mohamud', 'consultant', '1991-02-26'),
('Niklas', 'Sjögren', 'consultant', '1978-06-20'),

-- Studenter
('Nova', 'Lager', 'student', '2002-01-05'),
('Milton', 'Frisk', 'student', '2001-12-12'),
('Livia', 'Ståhl', 'student', '1997-10-23'),
('Albin', 'Roos', 'student', '1999-02-14'),
('Signe', 'Wester', 'student', '2000-06-30'),
('Freja', 'Lindholm', 'student', '1999-04-18'),
('Noel', 'Azizi', 'student', '1998-11-11'),
('Tuva', 'Rydén', 'student', '2004-09-09'),
('Ville', 'Sjödin', 'student', '1996-08-08'),
('Ester', 'Palmqvist', 'student', '1995-05-05'),
('Leon', 'Navarro', 'student', '1996-08-15'),
('Mira', 'Falk', 'student', '1999-02-28'),
('Axel', 'Boström', 'student', '1991-12-04'),
('Iris', 'Norén', 'student', '1992-03-03'),
('Ludvig', 'Viklund', 'student', '2002-04-04'),
('Selma', 'Hedman', 'student', '2001-01-04'),
('Malik', 'Osman', 'student', '1999-01-10'),
('Leila', 'Abukar', 'student', '2001-09-21'),
('Arvid', 'Sandell', 'student', '1994-08-11'),
('Robin', 'Dahlström', 'student', '1998-08-08'),
('Hamza', 'Yassin', 'student', '1997-05-03'),
('Agnes', 'Lundell', 'student', '2003-12-10'),
('Nabil', 'Hersi', 'student', '1999-06-04'),
('Yuna', 'Park', 'student', '2005-02-05'),
('Meja', 'Bergvik', 'student', '2000-03-03'),
('Max', 'Ekström', 'student', '1987-07-08'),
('Kian', 'Özkan', 'student', '1995-09-05'),
('Viggo', 'Blom', 'student', '1986-10-10');

-- Program

INSERT INTO program (program_name, program_code, total_credits, duration_weeks, description, is_active) VALUES
('Software Developer', 'SD01', 400, 40, 'Utbildning inom programmering, systemutveckling och databaser.', TRUE),
('Data Analytics & AI', 'DA01', 400, 42, 'Utbildning inom dataanalys, Python och AI-lösningar.', TRUE),
('Digital Product Design', 'DPD01', 350, 35, 'Utbildning inom UX, UI och digital produktdesign.', TRUE),
('Cloud & DevOps Engineer', 'CD01', 400, 40, 'Utbildning inom molntjänster, deployment och infrastruktur.', TRUE),
('IT Security Specialist', 'ITS01', 400, 40, 'Utbildning inom cybersäkerhet, riskanalys och dataskydd.', TRUE);

-- Kurser

INSERT INTO course (course_name, course_code, credits, description, is_standalone, difficulty_level, is_active) VALUES
('Webbutveckling med JavaScript', 'WEB01', 40, 'Grunder i JavaScript, HTML och frontend.', FALSE, 'beginner', TRUE),
('SQL och Datamodellering', 'SQL01', 40, 'Databaser, SQL-frågor och relationsmodeller.', FALSE, 'beginner', TRUE),
('Frontend med React', 'FE01', 40, 'Komponenter, state och struktur i React.', FALSE, 'intermediate', TRUE),
('Python för Dataanalys', 'PYDA01', 40, 'Python, Pandas och enklare dataanalys.', FALSE, 'beginner', TRUE),
('AI och Machine Learning', 'AIML01', 40, 'Grundläggande maskininlärning och AI-begrepp.', FALSE, 'beginner', TRUE),
('Molntjänster och Azure', 'AZURE01', 40, 'Introduktion till Azure och molnbaserade lösningar.', FALSE, 'beginner', TRUE),
('Agil Projektledning', 'AGIL01', 20, 'Planering, samarbete och agila arbetsmetoder.', TRUE, 'beginner', TRUE),
('Testning och Kvalitetssäkring', 'TEST01', 20, 'Teststrategier, testautomatisering och kvalitet.', TRUE, 'intermediate', TRUE),
('Informationssäkerhet och GDPR', 'SEC01', 20, 'Dataskydd, säkerhet och GDPR i IT-miljöer.', TRUE, 'beginner', TRUE),
('Kommunikation i IT-projekt', 'KOM01', 10, 'Presentation och kommunikation i tekniska projekt.', TRUE, 'beginner', TRUE);

-- Roller

INSERT INTO education_leader (leader_id, employee_number, department) VALUES
(1, 'EL-2024-101', 'Systemutveckling'),
(2, 'EL-2024-102', 'Data och AI'),
(3, 'EL-2024-103', 'Design och Produkt'),
(4, 'EL-2024-104', 'Cloud och DevOps'),
(5, 'EL-2024-105', 'IT-säkerhet');

INSERT INTO educator (educator_id, is_permanent, employee_number, employment_date, hourly_rate) VALUES
(6, TRUE, 'ED-1001', '2011-04-12', 550.00),
(7, TRUE, 'ED-1002', '2008-08-18', 600.00),
(8, TRUE, 'ED-1003', '2014-01-22', 580.00),
(9, TRUE, 'ED-1004', '2016-05-09', 570.00),
(10, TRUE, 'ED-1005', '2019-02-14', 560.00),
(11, TRUE, 'ED-1006', '2020-09-01', 540.00),
(12, TRUE, 'ED-1007', '2021-03-11', 530.00),
(13, TRUE, 'ED-1008', '2022-06-20', 520.00),
(14, FALSE, 'ED-2001', NULL, 650.00),
(15, FALSE, 'ED-2002', NULL, 620.00),
(16, FALSE, 'ED-2003', NULL, 640.00),
(17, FALSE, 'ED-2004', NULL, 630.00),
(18, FALSE, 'ED-2005', NULL, 660.00);

-- Persondetaljer
INSERT INTO person_details (person_id, personal_number, email) VALUES
(1, '840412-1234', 'henrik.lindqvist@yrkesco.se'),
(2, '790903-5678', 'camilla.stromberg@yrkesco.se'),
(3, '860127-9101', 'nadia.karimi@yrkesco.se'),
(4, '910718-1121', 'marcus.westin@yrkesco.se'),
(5, '821109-1234', 'helena.broman@yrkesco.se'),

(6, '770221-2345', 'rickard.forsell@yrkesco.se'),
(7, '690614-3456', 'therese.granlund@yrkesco.se'),
(8, '741202-4567', 'jonas.ekman@yrkesco.se'),
(9, '830519-5678', 'miriam.saeed@yrkesco.se'),
(10, '881008-6789', 'patrik.holmqvist@yrkesco.se'),
(11, '900325-7890', 'elvira.nordin@yrkesco.se'),
(12, '930816-8901', 'kevin.bergman@yrkesco.se'),
(13, '950130-9012', 'samira.kadir@yrkesco.se'),
(14, '960411-0123', 'rasmus.wikstrom@yrkesco.se'),
(15, '970922-2345', 'olga.petrova@yrkesco.se'),
(16, '940217-3456', 'benjamin.cole@yrkesco.se'),
(17, '951205-4567', 'lucia.romero@yrkesco.se'),
(18, '920713-5678', 'elliot.murphy@yrkesco.se'),

(19, '810306-6789', 'tobias.hellstrom@yrkesco.se'),
(20, '870829-7890', 'mona.ismail@yrkesco.se'),
(21, '901115-8901', 'rebecka.salazar@yrkesco.se'),
(22, '841004-9012', 'casper.lindell@yrkesco.se'),
(23, '910226-0123', 'dalia.mohamud@yrkesco.se'),
(24, '780620-2345', 'niklas.sjogren@yrkesco.se'),

(25, '020105-3456', 'nova.lager@yrkesco.se'),
(26, '011212-4567', 'milton.frisk@yrkesco.se'),
(27, '971023-5678', 'livia.stahl@yrkesco.se'),
(28, '990214-6789', 'albin.roos@yrkesco.se'),
(29, '000630-7890', 'signe.wester@yrkesco.se'),
(30, '990418-8901', 'freja.lindholm@yrkesco.se'),
(31, '981111-9012', 'noel.azizi@yrkesco.se'),
(32, '040909-0123', 'tuva.ryden@yrkesco.se'),
(33, '960808-2345', 'ville.sjodin@yrkesco.se'),
(34, '950505-3456', 'ester.palmqvist@yrkesco.se'),
(35, '960815-4567', 'leon.navarro@yrkesco.se'),
(36, '990228-5678', 'mira.falk@yrkesco.se'),
(37, '911204-6789', 'axel.bostrom@yrkesco.se'),
(38, '920303-7890', 'iris.noren@yrkesco.se'),
(39, '020404-8901', 'ludvig.viklund@yrkesco.se'),
(40, '010104-9012', 'selma.hedman@yrkesco.se'),
(41, '990110-0123', 'malik.osman@yrkesco.se'),
(42, '010921-2345', 'leila.abukar@yrkesco.se'),
(43, '940811-3456', 'arvid.sandell@yrkesco.se'),
(44, '980808-4567', 'robin.dahlstrom@yrkesco.se'),
(45, '970503-5678', 'hamza.yassin@yrkesco.se'),
(46, '031210-6789', 'agnes.lundell@yrkesco.se'),
(47, '990604-7890', 'nabil.hersi@yrkesco.se'),
(48, '050205-8901', 'yuna.park@yrkesco.se'),
(49, '000303-9012', 'meja.bergvik@yrkesco.se'),
(50, '870708-0123', 'max.ekstrom@yrkesco.se'),
(51, '950905-2345', 'kian.ozkan@yrkesco.se'),
(52, '861010-3456', 'viggo.blom@yrkesco.se');

-- Klasser

INSERT INTO class (program_id, leader_id, site_id, class_name, class_code, iteration, start_date, end_date, max_students, status) VALUES
(1, 1, 1, 'Software Developer Göteborg VT24', 'SD-GBG-24A', 1, '2024-01-15', '2024-06-15', 25, 'ongoing'),
(1, 1, 2, 'Software Developer Göteborg HT24', 'SD-GBG-24B', 2, '2024-08-20', '2024-12-20', 25, 'planned'),
(1, 1, 1, 'Software Developer Göteborg VT25', 'SD-GBG-25A', 3, '2025-01-15', '2025-06-15', 25, 'planned'),

(2, 2, 1, 'Data Analytics Göteborg VT24', 'DA-GBG-24A', 1, '2024-02-01', '2024-07-01', 20, 'ongoing'),
(2, 2, 4, 'Data Analytics Stockholm HT24', 'DA-STH-24B', 2, '2024-09-01', '2024-12-31', 20, 'planned'),
(2, 2, 1, 'Data Analytics Göteborg VT25', 'DA-GBG-25A', 3, '2025-02-01', '2025-07-01', 20, 'planned'),

(3, 3, 2, 'Product Design Göteborg VT24', 'DPD-GBG-24A', 1, '2024-03-01', '2024-07-30', 19, 'ongoing'),
(3, 3, 5, 'Product Design Malmö HT24', 'DPD-MAL-24B', 2, '2024-09-05', '2024-12-30', 18, 'planned'),
(3, 3, 2, 'Product Design Göteborg VT25', 'DPD-GBG-25A', 3, '2025-03-01', '2025-07-30', 19, 'planned'),

(4, 4, 4, 'Cloud DevOps Stockholm VT24', 'CD-STH-24A', 1, '2024-02-15', '2024-07-15', 22, 'ongoing'),
(4, 4, 6, 'Cloud DevOps Uppsala HT24', 'CD-UPP-24B', 2, '2024-08-15', '2024-12-15', 24, 'planned'),
(4, 4, 4, 'Cloud DevOps Stockholm VT25', 'CD-STH-25A', 3, '2025-02-15', '2025-07-15', 22, 'planned'),

(5, 5, 3, 'IT Security Stockholm VT24', 'ITS-STH-24A', 1, '2024-03-10', '2024-08-10', 20, 'ongoing'),
(5, 5, 6, 'IT Security Uppsala HT24', 'ITS-UPP-24B', 2, '2024-09-10', '2024-12-20', 20, 'planned'),
(5, 5, 3, 'IT Security Stockholm VT25', 'ITS-STH-25A', 3, '2025-03-10', '2025-08-10', 20, 'planned'),

(1, 1, 3, 'Software Developer Stockholm VT24', 'SD-STH-24A', 1, '2024-01-20', '2024-06-20', 30, 'ongoing'),
(1, 2, 5, 'Software Developer Malmö HT24', 'SD-MAL-24B', 1, '2024-08-25', '2024-12-25', 28, 'planned');

-- Studenter

INSERT INTO student (student_id, program_id, class_id, student_number, enrollment_date, status) VALUES
(25, 1, 1, 'STU-24001', '2024-01-10', 'active'),
(26, 1, 1, 'STU-24002', '2024-01-10', 'active'),
(27, 1, 1, 'STU-24003', '2024-01-10', 'active'),
(28, 1, 2, 'STU-24004', '2024-08-15', 'active'),
(29, 1, 2, 'STU-24005', '2024-08-15', 'active'),
(30, 1, 2, 'STU-24006', '2024-08-15', 'active'),

(31, 2, 4, 'STU-24007', '2024-01-25', 'active'),
(32, 2, 4, 'STU-24008', '2024-01-25', 'active'),
(33, 2, 4, 'STU-24009', '2024-01-25', 'active'),
(34, 2, 5, 'STU-24010', '2024-09-05', 'active'),
(35, 2, 5, 'STU-24011', '2024-09-05', 'active'),

(36, 3, 7, 'STU-24012', '2024-03-01', 'active'),
(37, 3, 7, 'STU-24013', '2024-03-01', 'active'),
(38, 3, 7, 'STU-24014', '2024-03-01', 'active'),
(39, 3, 8, 'STU-24015', '2024-09-01', 'active'),
(40, 3, 8, 'STU-24016', '2024-09-01', 'active'),

(41, 4, 10, 'STU-24017', '2024-02-20', 'active'),
(42, 4, 10, 'STU-24018', '2024-02-20', 'active'),
(43, 4, 10, 'STU-24019', '2024-02-20', 'active'),
(44, 4, 11, 'STU-24020', '2024-08-20', 'active'),
(45, 4, 11, 'STU-24021', '2024-08-20', 'active'),

(46, 5, 13, 'STU-24022', '2024-03-15', 'active'),
(47, 5, 13, 'STU-24023', '2024-03-15', 'active'),
(48, 5, 13, 'STU-24024', '2024-03-15', 'active'),
(49, 5, 14, 'STU-24025', '2024-09-10', 'active'),
(50, 5, 14, 'STU-24026', '2024-09-10', 'active'),

(51, 1, 16, 'STU-24027', '2024-01-15', 'active'),
(52, 1, 16, 'STU-24028', '2024-01-15', 'active');

-- Program och kurser

INSERT INTO program_course (program_id, course_id, is_mandatory, semester) VALUES
(1, 1, TRUE, 1),
(1, 2, TRUE, 2),
(1, 3, FALSE, 3),

(2, 4, TRUE, 1),
(2, 5, TRUE, 2),
(2, 6, TRUE, 3),

(3, 1, FALSE, 1),
(3, 7, TRUE, 2),

(4, 6, TRUE, 1),
(4, 2, TRUE, 1),
(4, 3, FALSE, 2),

(5, 2, TRUE, 1),
(5, 9, TRUE, 2),
(5, 8, FALSE, 3);

-- Kurstillfällen
INSERT INTO course_assignment (course_id, educator_id, class_id, start_date, end_date) VALUES
(1, 6, 1, '2024-01-15', '2024-03-15'),
(2, 13, 1, '2024-03-16', '2024-06-15'),

(4, 15, 4, '2024-02-01', '2024-04-01'),
(5, 8, 4, '2024-04-02', '2024-07-01'),

(1, 9, 7, '2024-03-01', '2024-04-30'),
(7, 10, 7, '2024-05-01', '2024-07-30'),

(6, 10, 10, '2024-02-15', '2024-04-15'),
(2, 17, 10, '2024-04-16', '2024-07-15'),

(2, 11, 13, '2024-03-10', '2024-05-10'),
(9, 12, 13, '2024-05-11', '2024-08-10'),

(1, 9, 16, '2024-01-20', '2024-03-20'),
(2, 16, 16, '2024-03-21', '2024-06-20'),

(8, 12, 1, '2024-05-01', '2024-05-31'),
(9, 14, 4, '2024-06-01', '2024-06-30'),
(7, 15, 2, '2024-09-01', '2024-09-30'),
(10, 16, 10, '2024-10-01', '2024-10-15');

-- Studentinskrivningar på kurstillfällen
INSERT INTO student_enrollment (student_id, assignment_id, enrollment_date, grade, status) VALUES
(25, 1, '2024-01-12', NULL, 'enrolled'),
(25, 2, '2024-03-16', NULL, 'enrolled'),
(25, 13, '2024-04-28', 'B', 'completed'),

(26, 1, '2024-01-13', 'A', 'completed'),
(26, 2, '2024-03-16', NULL, 'enrolled'),
(26, 13, '2024-04-28', 'A', 'completed'),

(31, 3, '2024-01-28', 'B', 'completed'),
(31, 4, '2024-04-03', NULL, 'enrolled'),
(31, 14, '2024-05-28', 'A', 'completed'),

(36, 5, '2024-03-02', NULL, 'enrolled'),
(36, 6, '2024-05-02', NULL, 'enrolled'),

(41, 7, '2024-02-18', 'B', 'completed'),
(41, 8, '2024-04-17', NULL, 'enrolled'),
(41, 16, '2024-09-28', NULL, 'enrolled'),

(46, 9, '2024-03-16', NULL, 'enrolled'),
(46, 10, '2024-05-12', NULL, 'enrolled'),

(51, 11, '2024-01-18', NULL, 'enrolled'),
(51, 12, '2024-03-22', NULL, 'enrolled');