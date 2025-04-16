-- Users Table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50),
    user_password VARCHAR(255),
    user_email VARCHAR(100),
    user_phonenumber VARCHAR(20),
    user_address VARCHAR(255),
    user_role VARCHAR(20)
);

-- Memberships Table
CREATE TABLE memberships (
    membership_id SERIAL PRIMARY KEY,
    membership_type VARCHAR(50),
    membership_description TEXT,
    membership_cost DECIMAL(10,2),
    member_id INT REFERENCES users(user_id)
);

-- Workout Classes Table
CREATE TABLE workout_classes (
    workoutclass_id SERIAL PRIMARY KEY,
    workoutclass_type VARCHAR(50),
    workoutclass_description TEXT,
    trainer_id INT REFERENCES users(user_id)
);

-- Class Enrollments Table (Optional but recommended)
CREATE TABLE class_enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES users(user_id),
    workoutclass_id INT REFERENCES workout_classes(workoutclass_id),
    enrolled_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample Users
INSERT INTO users (user_name, user_password, user_email, user_phonenumber, user_address, user_role)
VALUES 
('admin1', 'adminpass', 'admin@gym.com', '111-222-3333', '1 Admin St', 'admin'),
('trainer1', 'trainerpass', 'trainer@gym.com', '444-555-6666', '2 Trainer Blvd', 'trainer'),
('member1', 'memberpass', 'member@gym.com', '777-888-9999', '3 Member Rd', 'member');

-- Sample Memberships
INSERT INTO memberships (membership_type, membership_description, membership_cost, member_id)
VALUES
('Monthly', 'Basic gym access', 49.99, 3),
('Yearly', 'All-access VIP membership', 499.99, 3);

-- Sample Workout Classes
INSERT INTO workout_classes (workoutclass_type, workoutclass_description, trainer_id)
VALUES
('Yoga', 'Morning yoga for flexibility', 2),
('HIIT', 'High intensity interval training', 2);

-- Optional: Sample Enrollments
INSERT INTO class_enrollments (member_id, workoutclass_id)
VALUES
(3, 1),
(3, 2);
