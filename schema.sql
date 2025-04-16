-- User Table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_email VARCHAR(100) UNIQUE NOT NULL,
    user_phonenumber VARCHAR(20),
    user_address VARCHAR(255),
    user_role VARCHAR(20) CHECK (user_role IN ('admin', 'trainer', 'member')) NOT NULL
);

-- Membership Table
CREATE TABLE memberships (
    membership_id SERIAL PRIMARY KEY,
    membership_type VARCHAR(50) NOT NULL,
    membership_description TEXT,
    membership_cost DECIMAL(10,2) NOT NULL,
    member_id INT REFERENCES users(user_id) ON DELETE CASCADE
);

-- Workout Class Table
CREATE TABLE workout_classes (
    workoutclass_id SERIAL PRIMARY KEY,
    workoutclass_type VARCHAR(50) NOT NULL,
    workoutclass_description TEXT,
    trainer_id INT REFERENCES users(user_id) ON DELETE SET NULL
);
