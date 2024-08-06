CREATE TABLE batch (
    id VARCHAR(10) PRIMARY KEY ,
    number VARCHAR(10) ,
    program_id VARCHAR(10) NOT NULL ,
    CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES program(id)
);

