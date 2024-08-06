CREATE TABLE batch (
    number VARCHAR(10) PRIMARY KEY ,
    program_id VARCHAR(10) NOT NULL ,
    CONSTRAINT fk_enrollment FOREIGN KEY (number) REFERENCES enrollment(batch_number),
    CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES program(id)
);

