CREATE TABLE batch (
                       number VARCHAR(10) PRIMARY KEY,
                       program_id VARCHAR(10) NOT NULL,
                       CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES program(id)
);

CREATE TABLE exam (
                      exam_code VARCHAR(10) PRIMARY KEY,
                      passing_score INT NOT NULL,
                      module_id VARCHAR(10) NOT NULL,
                      CONSTRAINT fk_module FOREIGN KEY (module_id) REFERENCES module(id)
);

CREATE TABLE student
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE student (
                         id VARCHAR(10) PRIMARY KEY,
                         name VARCHAR(100) NOT NULL
);

CREATE TABLE program (
                         id VARCHAR(10) PRIMARY KEY,
                         name VARCHAR(30) NOT NULL
);

CREATE TABLE module (
                        id VARCHAR(10) PRIMARY KEY,
                        name VARCHAR(100) NOT NULL,
                        credit INT NOT NULL
);

CREATE TABLE enrollment (
                            student_id VARCHAR(10),
                            batch_number VARCHAR(10),
                            registered_date DATE,
                            PRIMARY KEY (student_id, batch_number),
                            CONSTRAINT fk_student_enrollment FOREIGN KEY (student_id) REFERENCES student(id),
                            CONSTRAINT fk_batch FOREIGN KEY (batch_number) REFERENCES batch(number)
);

-- Insert into program table
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
CREATE TABLE program_module(
    program_id VARCHAR (10),
    module_id VARCHAR (10),
    CONSTRAINT pk_program_module PRIMARY KEY (program_id,program_id),
    CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES program(id),
    CONSTRAINT fk_module FOREIGN KEY (module_id) REFERENCES module(id)

)


-- Insert into module table
INSERT INTO module(id, name, credit) VALUES
                                         ('M001','SE1',2312),
                                         ('M002','SE2',2312),
                                         ('M003','SE3',78765),
                                         ('M004','SE4',322),
                                         ('M005','SE5',2312),
                                         ('M006','SE6',33),
                                         ('M007','SE7',2312),
                                         ('M008','SE8',333),
                                         ('M009','SE9',2322),
                                         ('M010','SE10',34234),
                                         ('M011','SE11',342),
                                         ('M012','SE12',2312),
                                         ('M013','SE13',32423),
                                         ('M014','SE14',32443);
