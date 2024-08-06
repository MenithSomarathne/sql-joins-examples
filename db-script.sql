CREATE TABLE exam(
                     exam_code VARCHAR(10) PRIMARY KEY ,
                     passing_score INT NOT NULL ,
                     module_id VARCHAR(10) NOT NULL ,
                     CONSTRAINT fk_module FOREIGN KEY  (module_id) REFERENCES module(id)
);