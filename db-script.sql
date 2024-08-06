
CREATE TABLE batch (
    number VARCHAR(10) PRIMARY KEY ,
    program_id VARCHAR(10) NOT NULL ,
    CONSTRAINT fk_enrollment FOREIGN KEY (number) REFERENCES enrollment(batch_number),
    CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES program(id)
);


CREATE TABLE student(
    id VARCHAR(10) PRIMARY KEY ,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE program(
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE student_exam(
    student_id VARCHAR(10),
    exam_code VARCHAR(10),
    marks INT,
    CONSTRAINT pk_student_exam PRIMARY KEY (student_id,exam_code),
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES student(id),
    CONSTRAINT fk_exam FOREIGN KEY (exam_code) REFERENCES exam(exam_code)
);

INSERT INTO program(id, name) VALUES
                                  ('P001','DEP'),
                                  ('P002','CMJD'),
                                  ('P003','GDSE'),
                                  ('P004','SNDSE');

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
                                         ('M001','Swe',2312),
                                         ('M002','Swe',2312),
                                         ('M003','Swe',78765),
                                         ('M004','Swe',322),
                                         ('M005','Swe',2312),
                                         ('M006','Swe',33),
                                         ('M007','Swe',2312),
                                         ('M008','Swe',333),
                                         ('M009','Swe',2322),
                                         ('M0010','Swe',34234),
                                         ('M0011','Swe',342),
                                         ('M0012','Swe',2312),
                                         ('M0013','Swe',32423),
                                         ('M0014','Swe',32443);

