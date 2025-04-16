-- USERS TABLE
CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50),
    user_password VARCHAR(255),
    user_email VARCHAR(100),
    user_phonenumber VARCHAR(20),
    user_address VARCHAR(255),
    user_role VARCHAR(20)
);

-- MEMBERSHIPS TABLE
CREATE TABLE IF NOT EXISTS memberships (
    membership_id SERIAL PRIMARY KEY,
    membership_type VARCHAR(50),
    membership_description TEXT,
    membership_cost DECIMAL(10,2),
    member_id INT REFERENCES users(user_id)
);

-- WORKOUT CLASSES TABLE
CREATE TABLE IF NOT EXISTS workout_classes (
    workoutclass_id SERIAL PRIMARY KEY,
    workoutclass_type VARCHAR(50),
    workoutclass_description TEXT,
    trainer_id INT REFERENCES users(user_id)
);

-- INSERT SAMPLE USERS
INSERT INTO users (user_name, user_password, user_email, user_phonenumber, user_address, user_role)
VALUES 
('admin1', 'adminpass', 'admin@gym.com', '1112223333', '1 Admin St', 'admin'),
('trainer1', 'trainerpass', 'trainer@gym.com', '4445556666', '2 Trainer Blvd', 'trainer'),
('member1', 'memberpass', 'member@gym.com', '7778889999', '3 Member Rd', 'member');

-- INSERT SAMPLE MEMBERSHIPS
INSERT INTO memberships (membership_type, membership_description, membership_cost, member_id)
VALUES
('Monthly', 'Access to gym floor and cardio area', 49.99, 3),
('Yearly', 'All-inclusive VIP pass', 499.99, 3);

-- INSERT SAMPLE WORKOUT CLASSES
INSERT INTO workout_classes (workoutclass_type, workoutclass_description, trainer_id)
VALUES
('Yoga', 'Morning yoga for flexibility', 2),
('HIIT', 'High intensity interval training', 2);

-- ANALYTICAL QUERY: Revenue by membership type
SELECT 
    membership_type, 
    COUNT(*) AS total_purchases, 
    SUM(membership_cost) AS total_revenue
FROM memberships
GROUP BY membership_type;
