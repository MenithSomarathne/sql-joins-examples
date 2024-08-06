CREATE TABLE program (
                         id VARCHAR(10) PRIMARY KEY,
                         name VARCHAR(30) NOT NULL
);

CREATE TABLE module (
                        id VARCHAR(10) PRIMARY KEY,
                        name VARCHAR(100) NOT NULL,
                        credit INT NOT NULL
);

CREATE TABLE batch (
                       number VARCHAR(10) PRIMARY KEY,
                       program_id VARCHAR(10) NOT NULL,
                       CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES program(id)
);

CREATE TABLE student (
                         id VARCHAR(10) PRIMARY KEY,
                         name VARCHAR(100) NOT NULL
);

CREATE TABLE exam (
                      exam_code VARCHAR(10) PRIMARY KEY,
                      passing_score INT NOT NULL,
                      module_id VARCHAR(10) NOT NULL,
                      CONSTRAINT fk_module FOREIGN KEY (module_id) REFERENCES module(id)
);

CREATE TABLE student_exam (
                              student_id VARCHAR(10),
                              exam_code VARCHAR(10),
                              marks INT,
                              CONSTRAINT pk_student_exam PRIMARY KEY (student_id, exam_code),
                              CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES student(id),
                              CONSTRAINT fk_exam FOREIGN KEY (exam_code) REFERENCES exam(exam_code)
);

CREATE TABLE enrollment (
                            student_id VARCHAR(10),
                            batch_number VARCHAR(10),
                            registered_date DATE,
                            PRIMARY KEY (student_id, batch_number),
                            CONSTRAINT fk_student_enrollment FOREIGN KEY (student_id) REFERENCES student(id),
                            CONSTRAINT fk_batch FOREIGN KEY (batch_number) REFERENCES batch(number)
);

CREATE TABLE program_module (
                                program_id VARCHAR(10),
                                module_id VARCHAR(10),
                                CONSTRAINT pk_program_module PRIMARY KEY (program_id, module_id),
                                CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES program(id),
                                CONSTRAINT fk_module FOREIGN KEY (module_id) REFERENCES module(id)
);

INSERT INTO program(id, name) VALUES
                                  ('P001', 'DEP'),
                                  ('P002', 'CMJD'),
                                  ('P003', 'GDSE'),
                                  ('P004', 'SNDSE');


INSERT INTO exam(exam_code,passing_score,module_id) VALUES
                                                        ('EX001',50,'M001'),
                                                        ('EX001',50,'M002'),
                                                        ('EX001',50,'M003'),
                                                        ('EX001',50,'M004'),
                                                        ('EX001',50,'M005'),
                                                        ('EX002',50,'M001'),
                                                        ('EX002',50,'M002'),
                                                        ('EX002',50,'M002'),
                                                        ('EX002',50,'M004'),
                                                        ('EX002',50,'M005');

INSERT INTO student_exam(student_id,exam_code,marks) VALUES
                                                         ('S001','EX001',85),
                                                         ('S002','EX001',95),
                                                         ('S003','EX001',45),
                                                         ('S004','EX001',55),
                                                         ('S005','EX001',34),
                                                         ('S006','EX001',18),
                                                         ('S007','EX001',99),
                                                         ('S008','EX001',77),
                                                         ('S009','EX001',88),
                                                         ('S001','EX002',56),
                                                         ('S002','EX002',89),
                                                         ('S003','EX002',90),
                                                         ('S004','EX002',87),
                                                         ('S005','EX002',85),
                                                         ('S006','EX002',65),
                                                         ('S007','EX002',97),
                                                         ('S008','EX002',57),
                                                         ('S009','EX002',83),
                                                         ('S010','EX002',64),
                                                         ('S011','EX002',78);

INSERT INTO enrollment(student_id,batch_number,registered_date) VALUES
                                                    ('S001','B001',2024-08-7),
                                                    ('S002','B002',2024-08-7),
                                                    ('S003','B003',2024-08-7),
                                                    ('S004','B004',2024-08-7),
                                                    ('S001','B005',2024-08-7),
                                                    ('S002','B006',2024-08-7),
                                                    ('S002','B007',2024-08-7),
                                                    ('S001','B008',2024-08-7),
                                                    ('S001','B009',2024-08-7),
                                                    ('S001','B0010',2024-08-7),
                                                    ('S001','B0011',2024-08-7),
                                                    ('S001','B001',2024-08-7),
                                                    ('S002','B001',2024-08-7),
                                                    ('S004','B002',2024-08-7),
                                                    ('S005','B003',2024-08-7),
                                                    ('S007','B003',2024-08-7),
                                                    ('S008','B009',2024-08-7),
                                                    ('S009','B0011',2024-08-7),
                                                    ('S010','B004',2024-08-7);





CREATE TABLE module
(
    id     VARCHAR(10) PRIMARY KEY,
    name   VARCHAR(100) NOT NULL,
    credit INT          NOT NULL
);




INSERT INTO module(id, name, credit) VALUES
                                         ('M001', 'SE1', 2312),
                                         ('M002', 'SE2', 2312),
                                         ('M003', 'SE3', 78765),
                                         ('M004', 'SE4', 322),
                                         ('M005', 'SE5', 2312),
                                         ('M006', 'SE6', 33),
                                         ('M007', 'SE7', 2312),
                                         ('M008', 'SE8', 333),
                                         ('M009', 'SE9', 2322),
                                         ('M010', 'SE10', 34234),
                                         ('M011', 'SE11', 342),
                                         ('M012', 'SE12', 2312),
                                         ('M013', 'SE13', 32423),
                                         ('M014', 'SE14', 32443);
INSERT INTO batch(number, program_id) VALUES
                                          ('B001', 'P001'),
                                          ('B002', 'P002'),
                                          ('B003', 'P003'),
                                          ('B004', 'P004'),
                                          ('B005', 'P001'),
                                          ('B006', 'P002'),
                                          ('B007', 'P003'),
                                          ('B008', 'P004'),
                                          ('B009', 'P001'),
                                          ('B010', 'P002'),
                                          ('B011', 'P003');

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
                                  ('S010', 'Jack'),
                                  ('S011', 'Karen');

INSERT INTO exam(exam_code, passing_score, module_id) VALUES
                                                          ('EX001', 50, 'M001'),
                                                          ('EX002', 50, 'M002'),
                                                          ('EX003', 50, 'M003'),
                                                          ('EX004', 50, 'M004'),
                                                          ('EX005', 50, 'M005');

INSERT INTO batch (number, program_id) VALUES
                                           ('B001', 'P001'),
                                           ('B002', 'P002'),
                                           ('B003', 'P003'),
                                           ('B004', 'P004'),
                                           ('B005', 'P005'),
                                           ('B006', 'P006');

INSERT INTO student_exam(student_id, exam_code, marks) VALUES
                                                           ('S001', 'EX001', 85),
                                                           ('S002', 'EX001', 95),
                                                           ('S003', 'EX001', 45),
                                                           ('S004', 'EX001', 55),
                                                           ('S005', 'EX001', 34),
                                                           ('S006', 'EX001', 18),
                                                           ('S007', 'EX001', 99),
                                                           ('S008', 'EX001', 77),
                                                           ('S009', 'EX001', 88),
                                                           ('S001', 'EX002', 56),
                                                           ('S002', 'EX002', 89),
                                                           ('S003', 'EX002', 90),
                                                           ('S004', 'EX002', 87),
                                                           ('S005', 'EX002', 85),
                                                           ('S006', 'EX002', 65),
                                                           ('S007', 'EX002', 97),
                                                           ('S008', 'EX002', 57),
                                                           ('S009', 'EX002', 83),
                                                           ('S010', 'EX002', 64),
                                                           ('S011', 'EX002', 78);

INSERT INTO enrollment(student_id, batch_number, registered_date) VALUES
                                                                      ('S001', 'B001', '2024-08-07'),
                                                                      ('S002', 'B002', '2024-08-07'),
                                                                      ('S003', 'B003', '2024-08-07'),
                                                                      ('S004', 'B004', '2024-08-07'),
                                                                      ('S001', 'B005', '2024-08-07'),
                                                                      ('S002', 'B006', '2024-08-07'),
                                                                      ('S002', 'B007', '2024-08-07'),
                                                                      ('S001', 'B008', '2024-08-07'),
                                                                      ('S001', 'B009', '2024-08-07'),
                                                                      ('S001', 'B010', '2024-08-07'),
                                                                      ('S001', 'B011', '2024-08-07'),
                                                                      ('S002', 'B001', '2024-08-07'),
                                                                      ('S004', 'B002', '2024-08-07'),
                                                                      ('S005', 'B003', '2024-08-07'),
                                                                      ('S007', 'B003', '2024-08-07'),
                                                                      ('S008', 'B009', '2024-08-07'),
                                                                      ('S009', 'B011', '2024-08-07'),
                                                                      ('S010', 'B004', '2024-08-07');

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
                                                      ('P002', 'M010'),
                                                      ('P003', 'M011'),
                                                      ('P004', 'M012'),
                                                      ('P001', 'M013'),
                                                      ('P002', 'M014');

CREATE TABLE enrollment_exam (
                                 student_id VARCHAR(10),
                                 batch_number VARCHAR(10),
                                 exam_code VARCHAR(10),
                                 CONSTRAINT pk_enrollment_exam PRIMARY KEY (student_id, batch_number, exam_code),
                                 FOREIGN KEY (student_id, batch_number) REFERENCES enrollment (student_id, batch_number)
);


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
                                                                      ('S010', 'B010', 'EX005'),
                                                                      ('S011', 'B011', 'EX001');
