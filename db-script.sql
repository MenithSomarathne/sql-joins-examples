CREATE TABLE student(

);

CREATE TABLE student_exam(
    student_id VARCHAR(10),
    exam_code VARCHAR(10),
    marks INT,
    CONSTRAINT pk_student_exam PRIMARY KEY (student_id,exam_code),
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES student(id),
    CONSTRAINT fk_exam FOREIGN KEY (exam_code) REFERENCES exam(exam_code)
);