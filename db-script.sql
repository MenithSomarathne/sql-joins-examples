CREATE TABLE student(
    id VARCHAR(10) PRIMARY KEY ,
    name VARCHAR(100) NOT NULL
);

INSERT INTO student VALUES
                        ("C001", "Menith"),
                        ("C002", "Lahiru"),
                        ("C003", "Sanduni"),
                        ("C004", "Dilini"),
                        ("C005", "Sachith"),
                        ("C006", "Wimukthi"),
                        ("C007", "Ruwan"),
                        ("C008", "Saman"),
                        ("C009", "Sandun"),
                        ("C010", "Udara");


CREATE TABLE program(
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

INSERT INTO program(id, name) VALUES
                                  ('P001','DEP'),
                                  ('P002','CMJD'),
                                  ('P003','GDSE'),
                                  ('P004','SNDSE');


