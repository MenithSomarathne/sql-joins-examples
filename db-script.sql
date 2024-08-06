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
