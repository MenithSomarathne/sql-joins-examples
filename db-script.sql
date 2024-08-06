DROP DATABASE IF EXISTS dep12_join_example;

CREATE DATABASE dep12_join_example;
USE dep12_join_example;
DROP TABLE IF EXISTS enrollment_exam;
DROP TABLE IF EXISTS enrollment;
DROP TABLE IF EXISTS exam;
DROP TABLE IF EXISTS program_module;
DROP TABLE IF EXISTS module;
DROP TABLE IF EXISTS batch;
DROP TABLE IF EXISTS program;
DROP TABLE IF EXISTS student;

CREATE TABLE student (
                         id VARCHAR(10) PRIMARY KEY,
                         name VARCHAR(100) NOT NULL
);

CREATE TABLE program (
                         id VARCHAR(10) PRIMARY KEY,
                         name VARCHAR(30) NOT NULL
);

CREATE TABLE batch (
                       id VARCHAR(10) PRIMARY KEY ,
                       number VARCHAR(10) ,
                       program_id VARCHAR(10) NOT NULL ,
                       CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES program(id)
);

CREATE TABLE module (
                        id VARCHAR(10) PRIMARY KEY,
                        name VARCHAR(100) NOT NULL,
                        credit INT NOT NULL
);

CREATE TABLE program_module (
                                program_id VARCHAR(10) NOT NULL ,
                                module_id VARCHAR(10) NOT NULL ,
                                CONSTRAINT pk_program_module PRIMARY KEY (program_id, module_id),
                                CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES program(id),
                                CONSTRAINT fk_module FOREIGN KEY (module_id) REFERENCES module(id)
);

CREATE TABLE exam (
                      exam_code VARCHAR(10) PRIMARY KEY,
                      passing_score INT NOT NULL,
                      module_id VARCHAR(10) NOT NULL,
                      CONSTRAINT fk_module FOREIGN KEY (module_id) REFERENCES module(id)
);

CREATE TABLE enrollment (
                            student_id VARCHAR(10) NOT NULL ,
                            batch_number VARCHAR(10) NOT NULL ,
                            registered_date DATE NOT NULL ,
                            CONSTRAINT pk_enrollment PRIMARY KEY (student_id, batch_number),
                            CONSTRAINT fk_enrollment FOREIGN KEY (student_id) REFERENCES student(id),
                            CONSTRAINT fk_batch FOREIGN KEY (batch_number) REFERENCES batch(number)
);

CREATE TABLE enrollment_exam (
                                 student_id VARCHAR(10) NOT NULL ,
                                 batch_number VARCHAR(10) NOT NULL ,
                                 exam_code VARCHAR(10) NOT NULL ,
                                 CONSTRAINT pk_enrollment_exam PRIMARY KEY (student_id, batch_number, exam_code),
                                 CONSTRAINT fk_enrollment_1 FOREIGN KEY (student_id, batch_number) REFERENCES enrollment (student_id, batch_number),
                                 CONSTRAINT fk_exam FOREIGN KEY (exam_code) REFERENCES exam(exam_code)
);

INSERT INTO student(id, name) VALUES
                                  ('S001', 'Alice'),
                                  ('S002', 'Bob'),
                                  ('S003', 'Charlie'),
                                  ('S004', 'David'),
                                  ('S005', 'Eva'),
                                  ('S006', 'Frank'),
                                  ('S007', 'Grace'),
                                  ('S008', 'Hannah'),
                                  ('S009', 'Ian'),
                                  ('S010', 'Jack');

INSERT INTO program(id, name) VALUES
                                  ('P001', 'DEP'),
                                  ('P002', 'CMJD'),
                                  ('P003', 'GDSE'),
                                  ('P004', 'JAVA'),
                                  ('P005', 'GIT');

INSERT INTO batch(number, program_id) VALUES
                                          ('B001', 'P001'),
                                          ('B002', 'P002'),
                                          ('B003', 'P003'),
                                          ('B004', 'P004'),
                                          ('B005', 'P005'),
                                          ('B006', 'P001'),
                                          ('B007', 'P002'),
                                          ('B008', 'P003'),
                                          ('B009', 'P004'),
                                          ('B010', 'P005');

INSERT INTO module(id, name, credit) VALUES
                                         ('M001', 'SE1', 100),
                                         ('M002', 'SE2', 80),
                                         ('M003', 'SE3', 90),
                                         ('M004', 'SE4', 100),
                                         ('M005', 'SE5', 80),
                                         ('M006', 'SE6', 70),
                                         ('M007', 'SE7', 90),
                                         ('M008', 'SE8', 80),
                                         ('M009', 'SE9', 90),
                                         ('M010', 'SE10', 100);

INSERT INTO program_module(program_id, module_id) VALUES
                                                      ('P001', 'M001'),
                                                      ('P001', 'M002'),
                                                      ('P002', 'M003'),
                                                      ('P002', 'M004'),
                                                      ('P003', 'M005'),
                                                      ('P003', 'M006'),
                                                      ('P004', 'M007'),
                                                      ('P004', 'M008'),
                                                      ('P001', 'M009'),
                                                      ('P002', 'M010');

INSERT INTO exam(exam_code, passing_score, module_id) VALUES
                                                          ('EX001', 50, 'M001'),
                                                          ('EX002', 50, 'M002'),
                                                          ('EX003', 50, 'M003'),
                                                          ('EX004', 50, 'M004'),
                                                          ('EX005', 50, 'M005');

INSERT INTO enrollment(student_id, batch_number, registered_date) VALUES
                                                                      ('S001', 'B001', '2024-08-07'),
                                                                      ('S002', 'B002', '2024-08-07'),
                                                                      ('S003', 'B003', '2024-08-07'),
                                                                      ('S004', 'B004', '2024-08-07'),
                                                                      ('S005', 'B005', '2024-08-07'),
                                                                      ('S006', 'B006', '2024-08-07'),
                                                                      ('S007', 'B007', '2024-08-07'),
                                                                      ('S008', 'B008', '2024-08-07'),
                                                                      ('S009', 'B009', '2024-08-07'),
                                                                      ('S010', 'B010', '2024-08-07');

INSERT INTO enrollment_exam (student_id, batch_number, exam_code) VALUES
                                                                      ('S001', 'B001', 'EX001'),
                                                                      ('S002', 'B002', 'EX002'),
                                                                      ('S003', 'B003', 'EX003'),
                                                                      ('S004', 'B004', 'EX004'),
                                                                      ('S005', 'B005', 'EX005'),
                                                                      ('S006', 'B006', 'EX001'),
                                                                      ('S007', 'B007', 'EX002'),
                                                                      ('S008', 'B008', 'EX003'),
                                                                      ('S009', 'B009', 'EX004'),
                                                                      ('S010', 'B010', 'EX005');