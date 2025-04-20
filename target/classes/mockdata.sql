-- Admins
INSERT INTO users (user_name, user_phone_number, user_email, user_address, user_password, user_role)
VALUES
('May Basalo', '709-123-4567', 'maybasalo@sample.com', '822 Dixon Place', 'password1', 'ADMIN'),
('John Smith', '708-234-5678', 'johnsmith@sample.com', '123 Maple Street', 'password2', 'ADMIN'),
('Lena Roberts', '707-345-6789', 'lenaroberts@sample.com', '456 Oak Avenue', 'password3', 'ADMIN'),
('Michael Johnson', '706-456-7890', 'michaeljohnson@sample.com', '789 Pine Road', 'password4', 'ADMIN'),
('Sarah Lee', '705-567-8901', 'sarahlee@sample.com', '321 Elm Street', 'password5', 'ADMIN');

-- Trainers
INSERT INTO users (user_name, user_phone_number, user_email, user_address, user_password, user_role)
VALUES
('Jovan Terry', '709-758-4405', 'jovanterry@sample.com', '656 Dovetail Junction', 'password6', 'TRAINER'),
('Cherilynn Eades', '358-511-6691', 'ceades1@opensource.org', '5 Bluejay Junction', 'cW9<\\D.\\#Y$AP', 'TRAINER'),
('Cloe Abbison', '716-804-9925', 'cabbison2@npr.org', '23286 Service Street', 'wV5#WADB#mn=S', 'TRAINER'),
('Willis Gerritzen', '954-727-4844', 'wgerritzen3@telegraph.co.uk', '37 Badeau Terrace', 'iF1`{_W\\', 'TRAINER'),
('Allyn Deschelle', '153-147-2979', 'adeschelle4@soup.io', '8844 High Crossing Terrace', 'sE6)3%R3rE}g', 'TRAINER');

-- Members
INSERT INTO users (user_name, user_phone_number, user_email, user_address, user_password, user_role)
VALUES
('Jhe Nunez', '709-134-5084', 'jhenunez@sample.com', '912 Hoepker Court', 'password7', 'MEMBER'),
('Liam Carter', '408-232-9821', 'liamcarter@sample.com', '77 Willow Road', 'liam1234', 'MEMBER'),
('Emma Stevens', '212-545-7889', 'emmastevens@sample.com', '500 Main Street', 'emmasecure1', 'MEMBER'),
('Noah Brooks', '917-654-1234', 'noahbrooks@sample.com', '1401 Crescent Drive', 'noah7890', 'MEMBER'),
('Olivia Morris', '310-123-5567', 'oliviamorris@sample.com', '22 Silver Lake Avenue', 'olivia@2024', 'MEMBER');

-- Workout Classes
INSERT INTO workout_classes (class_name, class_type, class_description, class_status, class_capacity, trainer_id)
VALUES
('Morning Yoga', 'Yoga', 'A relaxing morning yoga session to improve flexibility and mindfulness.', 'ACTIVE', 25, 1),
('Cardio Blast', 'Cardio', 'High-intensity cardio workout to burn fat and build endurance.', 'ACTIVE', 30, 2),
('Strength Training', 'Weightlifting', 'Focused on building muscle strength through weight training exercises.', 'ACTIVE', 20, 3),
('Zumba Dance', 'Dance', 'Fun and energetic dance workout set to Latin and international music.', 'INACTIVE', 40, 4),
('Pilates for Beginners', 'Pilates', 'A low-impact workout to improve posture, balance, and flexibility.', 'CANCELLED', 15, 5);


-- Sample INSERTs using MembershipType enum values
INSERT INTO memberships (membership_type, membership_cost, membership_description, member_id)
VALUES
('Basic', 29.99, 'Access to gym and equipment', 1),
('Standard', 59.99, 'Includes group classes', 2),
('Premium', 79.99, 'Classes and personal training', 3),
('Basic', 29.99, 'Access to gym and equipment', 4),
('Standard', 59.99, 'Includes group classes', 5);
