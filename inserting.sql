-- Insert data into person table (studenter)
INSERT INTO person (person_id, person_number, first_name, last_name)
VALUES 
(1, '123456789012', 'Anna', 'Karlsson'),
(2, '234567890123', 'Erik', 'Svensson'),
(3, '345678901234', 'Lisa', 'Nilsson'),
(4, '456789012345', 'John', 'Doe'),
(5, '567890123456', 'Emily', 'Smith'),
(6, '678901234567', 'Michael', 'Johnson'),
(7, '789012345678', 'Emma', 'Brown'),
(8, '890123456789', 'Sophia', 'Williams');

-- Insert data into person table (instruktörer)
INSERT INTO person (person_id, person_number, first_name, last_name)
VALUES 
(9, '901234567890', 'Ingrid', 'Bergman'),
(10, '012345678901', 'Sven', 'Larsson'),
(11, '123456789013', 'Karin', 'Johansson'),
(12, '234567890124', 'Lars', 'Karlsson'),
(13, '345678901235', 'Eva', 'Andersson');

-- Vi behöver skapa personposter för kontaktpersonerna
INSERT INTO person (person_id, person_number, first_name, last_name)
VALUES
(14, '456123789012', 'Maria', 'Karlsson'),
(15, '567234890123', 'Olof', 'Svensson'),
(16, '678345901234', 'Katarina', 'Nilsson'),
(17, '789456012345', 'Peter', 'Doe'),
(18, '890567123456', 'Linda', 'Smith'),
(19, '901678234567', 'Thomas', 'Johnson'),
(20, '012789345678', 'Eva', 'Brown'),
(21, '123890456789', 'Karl', 'Williams');

-- Insert data into email table
INSERT INTO email (email_id, email)
VALUES 
('E001', 'anna.karlsson@example.com'),
('E002', 'erik.svensson@example.com'),
('E003', 'lisa.nilsson@example.com'),
('E004', 'john.doe@example.com'),
('E005', 'emily.smith@example.com'),
('E006', 'michael.johnson@example.com'),
('E007', 'emma.brown@example.com'),
('E008', 'sophia.williams@example.com'),
('E009', 'ingrid.bergman@example.com'),
('E010', 'sven.larsson@example.com'),
('E011', 'karin.johansson@example.com'),
('E012', 'lars.karlsson@example.com'),
('E013', 'eva.andersson@example.com');

-- Insert data into person_email table
INSERT INTO person_email (person_id, email_id)
VALUES 
(1, 'E001'),
(2, 'E002'),
(3, 'E003'),
(4, 'E004'),
(5, 'E005'),
(6, 'E006'),
(7, 'E007'),
(8, 'E008'),
(9, 'E009'),
(10, 'E010'),
(11, 'E011'),
(12, 'E012'),
(13, 'E013');

-- Insert data into phone table
INSERT INTO phone (phone_id, phone_no)
VALUES 
(1, '0701234567'),
(2, '0702345678'),
(3, '0703456789'),
(4, '0704567890'),
(5, '0705678901'),
(6, '0706789012'),
(7, '0707890123'),
(8, '0708901234'),
(9, '0709012345'),
(10, '0700123456'),
(11, '0701234568'),
(12, '0702345679'),
(13, '0703456780');

-- Insert data into person_phone table
INSERT INTO person_phone (person_id, phone_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13);

-- Insert data into address_info table
INSERT INTO address_info (address_id, zip, street, city)
VALUES 
('ADDR001', '11122', 'Storgatan 1', 'Stockholm'),
('ADDR002', '22233', 'Kungsgatan 5', 'Göteborg'),
('ADDR003', '33344', 'Sveavägen 12', 'Malmö'),
('ADDR004', '44455', 'Parkvägen 4', 'Uppsala'),
('ADDR005', '55566', 'Centralgatan 10', 'Lund'),
('ADDR006', '66677', 'Ringvägen 22', 'Helsingborg'),
('ADDR007', '77788', 'Torggatan 15', 'Örebro'),
('ADDR008', '88899', 'Kyrkogatan 3', 'Västerås'),
('ADDR009', '99900', 'Villagatan 8', 'Linköping'),
('ADDR010', '00011', 'Skolgatan 2', 'Umeå'),
('ADDR011', '10112', 'Fabriksgatan 7', 'Gävle'),
('ADDR012', '12131', 'Hamngatan 9', 'Sundsvall'),
('ADDR013', '13141', 'Brovägen 6', 'Karlstad');

-- Insert data into person_address table
INSERT INTO person_address (person_id, address_id)
VALUES 
(1, 'ADDR001'),
(2, 'ADDR002'),
(3, 'ADDR003'),
(4, 'ADDR004'),
(5, 'ADDR005'),
(6, 'ADDR006'),
(7, 'ADDR007'),
(8, 'ADDR008'),
(9, 'ADDR009'),
(10, 'ADDR010'),
(11, 'ADDR011'),
(12, 'ADDR012'),
(13, 'ADDR013'),
(14, 'ADDR001'), -- Antag att kontaktpersonerna bor på samma adress
(15, 'ADDR002'),
(16, 'ADDR003'),
(17, 'ADDR004'),
(18, 'ADDR005'),
(19, 'ADDR006'),
(20, 'ADDR007'),
(21, 'ADDR008');

-- Insert data into student table
INSERT INTO student (student_id, person_id, number_of_siblings, skill_level)
VALUES 
(1, 1, 2, 'beginner'),
(2, 2, 1, 'intermediate'),
(3, 3, 0, 'advanced'),
(4, 4, 3, 'beginner'),
(5, 5, 0, 'intermediate'),
(6, 6, 1, 'advanced'),
(7, 7, 2, 'beginner'),
(8, 8, 0, 'advanced');

-- Insert data into contact_person table
INSERT INTO contact_person (contact_person_id, person_id, student_id, relation)
VALUES 
(1, 14, 1, 'Parent'),
(2, 15, 2, 'Guardian'),
(3, 16, 3, 'Parent'),
(4, 17, 4, 'Parent'),
(5, 18, 5, 'Guardian'),
(6, 19, 6, 'Parent'),
(7, 20, 7, 'Sibling'),
(8, 21, 8, 'Guardian');

-- Insert data into sibling table
INSERT INTO sibling (sibling_id, student_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- Insert data into discount table
INSERT INTO discount (discount_id, discount_rate, student_id)
VALUES 
('DIS001', 10.00, 1),
('DIS002', 5.00, 2),
('DIS003', 15.00, 3),
('DIS004', 20.00, 4),
('DIS005', 25.00, 5),
('DIS006', 30.00, 6),
('DIS007', 5.00, 7),
('DIS008', 10.00, 8);

-- Insert data into instructor table
INSERT INTO instructor (instructor_id, person_id, scheduled_time_slot, lesson_type, teach_ensembles)
VALUES 
(1, 9, '2023-11-21 10:00:00', 'Group', TRUE),
(2, 10, '2023-11-22 12:00:00', 'Individual', FALSE),
(3, 11, '2023-11-23 10:00:00', 'Individual', TRUE),
(4, 12, '2023-11-24 14:00:00', 'Group', FALSE),
(5, 13, '2023-11-25 09:00:00', 'Group', TRUE);

-- Insert data into instructor_salary table
INSERT INTO instructor_salary (salary_payment_id, amount, date_of_payment, instructor_id)
VALUES 
('SAL001', 20000.00, '2023-11-01', 1),
('SAL002', 25000.00, '2023-11-01', 2),
('SAL003', 22000.00, '2023-11-05', 3),
('SAL004', 24000.00, '2023-11-05', 4),
('SAL005', 26000.00, '2023-11-05', 5);

-- Insert data into lesson_price_history table
INSERT INTO lesson_price_history (lesson_price_id, skill_level_price, lesson_type_price, start_date, end_date, is_current)
VALUES 
('LP001', 100, 200, '2023-01-01', '2023-12-31', TRUE),
('LP002', 150, 250, '2023-01-01', '2023-12-31', TRUE),
('LP003', 120, 220, '2023-02-01', '2023-12-31', TRUE),
('LP004', 140, 240, '2023-03-01', '2023-12-31', TRUE),
('LP005', 160, 260, '2023-04-01', '2023-12-31', TRUE);

-- Insert data into lesson table
INSERT INTO lesson (lesson_id, lessonType, startDate, duration, instrumentType, difficultyLevel, lesson_price_id, instructor_id)
VALUES 
('L001', 'Group', '2023-11-20', '01:00:00', 'Guitar', 'beginner', 'LP001', 1),
('L002', 'Individual', '2023-11-21', '02:00:00', 'Piano', 'advanced', 'LP002', 2),
('L003', 'Group', '2023-11-22', '01:30:00', 'Violin', 'beginner', 'LP003', 3),
('L004', 'Individual', '2023-11-23', '02:30:00', 'Drum', 'advanced', 'LP004', 4),
('L005', 'Group', '2023-11-24', '01:00:00', 'Flute', 'intermediate', 'LP005', 5),
('L006', 'Ensembles', '2023-11-26', '02:00:00', 'Saxophone', 'intermediate', 'LP005', 1);
-- Insert data into student_lessons table
INSERT INTO student_lessons (lesson_id, student_id)
VALUES
    ('L001', 1),
    ('L002', 2),
    ('L003', 3),
    ('L004', 4),
    ('L005', 5),
    ('L001', 6),
    ('L002', 7),
    ('L003', 8);
	-- Insert data into instrument table
INSERT INTO instrument (instrument_id, instrument_type, instrument_brand, available_stock, lesson_id)
VALUES
('INSTR001', 'Guitar', 'Yamaha', 5, 'L001'),
('INSTR002', 'Piano', 'Roland', 3, 'L002'),
('INSTR003', 'Violin', 'Stradivarius', 2, 'L003'),
('INSTR004', 'Drum', 'Pearl', 4, 'L004'),
('INSTR005', 'Flute', 'Yamaha', 6, 'L005');
-- Insert data into rental_price_history table
INSERT INTO rental_price_history (rental_price_id, instrument_id, start_date, end_date, is_current, price)
VALUES
('RP001', 'INSTR001', '2023-01-01', '2023-12-31', TRUE, 100.00),
('RP002', 'INSTR002', '2023-01-01', '2023-12-31', TRUE, 120.00),
('RP003', 'INSTR003', '2023-02-01', '2023-12-31', TRUE, 150.00),
('RP004', 'INSTR004', '2023-03-01', '2023-12-31', TRUE, 180.00),
('RP005', 'INSTR005', '2023-04-01', '2023-12-31', TRUE, 200.00);
-- Insert data into group_lesson table
INSERT INTO group_lesson (lesson_id, max_students, min_students)
VALUES
('L001', 10, 2),
('L003', 15, 5),
('L005', 12, 4);

-- Insert data into individual_lesson table
INSERT INTO individual_lesson (lesson_id, timeSlot)
VALUES
('L002', '10:00:00'),
('L004', '11:00:00');

-- Insert data into ensembles_lesson table
INSERT INTO ensembles_lesson (lesson_id, genre, max_students, min_students)
VALUES 
('L006', 'Jazz', 20, 5);
-- Insert data into instrument_rental table
INSERT INTO instrument_rental (rental_id, rental_start_time, lease_expiry_time, rental_price_id, instrument_id, student_id)
VALUES
('R001', '2023-11-20 10:00:00', '2023-12-20 10:00:00', 'RP001', 'INSTR001', 1),
('R002', '2023-11-21 10:00:00', '2023-12-21 10:00:00', 'RP002', 'INSTR002', 2);
-- Insert data into student_payment table
INSERT INTO student_payment (payment_id, payment_date, discount_id, rental_id, student_id, amount)
VALUES
('PAY001', '2023-11-22', 'DIS001', 'R001', 1, 90.00), -- Applied 10% discount
('PAY002', '2023-11-23', 'DIS002', 'R002', 2, 114.00); -- Applied 5% discount



