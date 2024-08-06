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
);
