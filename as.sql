CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO student (student_id, first_name, last_name)
VALUES (1, 'Sherya', 'Bain'),
       (2, 'Rianna', 'foster'),
       (3, 'Yosef', 'Naylor');


CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)

	INSERT INTO teacher (teacher_id, first_name, last_name)
VALUES (1, 'Taylah', 'Brooker'),
       (2, 'Sarah-Louise', 'Blake')
	
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);



CREATE TABLE student_course (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);
INSERT INTO course (course_id, course_name, teacher_id)
	VALUES (1, 'Database Design', 1),
       (2, 'Python programming', 1),
       (3, 'English literature', 2);

SELECT s.first_name, s.last_name
FROM student s
JOIN student_course sc ON s.student_id = sc.student_id
JOIN course c ON sc.course_id = c.course_id
WHERE c.course_name = 'Database Design';

SELECT c.course_name
FROM course c
JOIN teacher t ON c.teacher_id = t.teacher_id
WHERE t.first_name = 'Taylah' AND t.last_name = 'Brooker';


SELECT 'Student' AS role, first_name, last_name
FROM student


UNION


SELECT 'Teacher' AS role, first_name, last_name
FROM teacher
WHERE last_name LIKE 'B%';

SELECT 'student' AS role, first_name, last_name
FROM student
WHERE last_name LIKE 'B%';