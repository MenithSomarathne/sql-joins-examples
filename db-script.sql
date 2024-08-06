
CREATE TABLE exam(
                     exam_code VARCHAR(10) PRIMARY KEY ,
                     passing_score INT NOT NULL ,
                     module_id VARCHAR(10) NOT NULL ,
                     CONSTRAINT fk_module FOREIGN KEY  (module_id) REFERENCES module(id)
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



INSERT INTO module (id, name, credit) VALUES
                                          ('M001', 'Java', 3),
                                          ('M002', 'English', 4),
                                          ('M003', 'Mathematics', 3),
                                          ('M004', 'Physics', 5),
                                          ('M005', 'Chemistry', 2),
                                          ('M006', 'Biology', 3),
                                          ('M007', 'History', 4),
                                          ('M008', 'Geography', 3),
                                          ('M009', 'Economics', 2),
                                          ('M010', 'Statistics', 4),
                                          ('M011', 'Computer Science', 3),
                                          ('M012', 'Software Engineering', 5),
                                          ('M013', 'Data Structures', 3),
                                          ('M014', 'Algorithms', 2),
                                          ('M015', 'Operating Systems', 4),
                                          ('M016', 'Databases', 3),
                                          ('M017', 'Networking', 4),
                                          ('M018', 'Web Development', 3),
                                          ('M019', 'Artificial Intelligence', 2),
                                          ('M020', 'Machine Learning', 3),
                                          ('M021', 'Cyber Security', 5),
                                          ('M022', 'Digital Marketing', 3),
                                          ('M023', 'Business Administration', 4),
                                          ('M024', 'Project Management', 3),
                                          ('M025', 'Accounting', 2),
                                          ('M026', 'Finance', 4),
                                          ('M027', 'Human Resources', 3),
                                          ('M028', 'Marketing', 2),
                                          ('M029', 'Sales', 3),
                                          ('M030', 'Customer Service', 4);







