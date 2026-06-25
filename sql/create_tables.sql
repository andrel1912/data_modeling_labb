
CREATE TABLE site (
    site_name VARCHAR(200) NOT NULL,
    site_id SERIAL PRIMARY KEY,
    site_code VARCHAR(15) UNIQUE NOT NULL,
    city VARCHAR(100) NOT NULL,
    address VARCHAR(300) NOT NULL,
    postal_code VARCHAR(10),
    phone VARCHAR(20)
);

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    person_type VARCHAR(50) NOT NULL CHECK (person_type IN ('student','educator','education_leader', 'consultant')),
    birth_date DATE
);

CREATE TABLE program (
    program_name VARCHAR(100) NOT NULL,
    program_id SERIAL PRIMARY KEY,
    program_code VARCHAR(10) NOT NULL UNIQUE,
    total_credits INTEGER NOT NULL,
    duration_weeks INTEGER,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE course (
    course_name VARCHAR(200) NOT NULL,
    course_id SERIAL PRIMARY KEY,   
    course_code VARCHAR(20) NOT NULL UNIQUE,
    credits INTEGER NOT NULL,
    description TEXT,
    is_standalone BOOLEAN DEFAULT FALSE,
    difficulty_level VARCHAR(20) DEFAULT 'basic',
    is_active BOOLEAN DEFAULT TRUE
);
CREATE TABLE education_leader (
    leader_id INTEGER PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    department VARCHAR(100)
    employee_number VARCHAR(25) UNIQUE NOT NULL,
);

CREATE TABLE person_details (
    person_detail_id SERIAL PRIMARY KEY,
    person_id INTEGER UNIQUE NOT NULL REFERENCES person(person_id) ON DELETE CASCADE,
    personal_number VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(300) UNIQUE NOT NULL
);

CREATE TABLE student (
    student_id INTEGER PRIMARY KEY REFERENCES person(person_id) ON DELETE CASCADE,
    program_id INTEGER NOT NULL REFERENCES program(program_id),
    class_id INTEGER NOT NULL REFERENCES class(class_id),
    student_number VARCHAR(30) UNIQUE NOT NULL,
    enrollment_date DATE DEFAULT CURRENT_DATE,
    status VARCHAR(20) DEFAULT 'active'
);

CREATE TABLE student_enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES student(student_id) ON DELETE CASCADE,
    assignment_id INTEGER NOT NULL REFERENCES course_assignment(assignment_id) ON DELETE CASCADE,
    enrollment_date DATE DEFAULT CURRENT_DATE,
    grade VARCHAR(2),
    status VARCHAR(20) DEFAULT 'enrolled',
    UNIQUE (student_id, assignment_id)
);