Gym CLI Application User Guide

The Gym App is a system for managing gym operations, including user accounts, memberships, and workout classes. It is designed for different user roles: Admins, Trainers, and Members.

Prerequisites

Java Development Kit (JDK) installed
IDE: IntelliJ IDEA or Visual Studio Code (VS Code)
Java extensions for VS Code (if using)
Running the Application

In VS Code
Open VS Code and navigate to the GymApp directory.
Locate the GymApp.java file in the src/GymApp directory.
Right-click the file and select "Run Java" or click the Run button in the top bar.
The app will start, and you'll interact with it via the command line.
In IntelliJ IDEA
Open the project in IntelliJ IDEA.
Locate and open GymApp.java in the src/GymApp directory.
Click the Run button or press Shift + F10.
The app will start, and you can interact with it via the command line.
Seeding the Database

Seeding adds initial test data to the database.

In VS Code
Right-click GymApp.java and select "Run Java".
Click the gear ⚙️ icon near the Run button and select "Configure".
In the launch.json file, add "args": ["--seed"] under the args section.
Save and re-run.
In IntelliJ IDEA
Open GymApp.java.
Go to Run > Edit Configurations.
In the "Program Arguments" field, type --seed.
Click Apply, then Run.
Main Menu Options

Add a new user: Register a new user.
Login as a user: Log in with an existing user account.
Exit: Close the app.
Registering a New User
Select Add a new user.
Provide the following details:
Email
Username
Password
Phone Number
Address
Role (Admin, Trainer, Member)
Logging In
Select Login as a user.
Enter your email and password.
If valid, you'll be taken to your user-specific menu.
Admin Menu

Once logged in as an Admin, you’ll see the following options:

View all Users: List all users.
View Users by Role: Filter users by role (Admin, Trainer, Member).
Delete User: Remove a user (can't delete yourself).
View Memberships: List all memberships.
View Total Revenue: Check total revenue for a specific year.
Logout: Return to the main menu.
Member Menu

Once logged in as a Member, you’ll see:

Browse Workout Classes: View all available classes.
View Total Membership Expenses: See total costs of your membership.
Purchase New Membership: Choose a membership (basic, standard, premium).
Logout: Return to the main menu.
Trainer Menu

Once logged in as a Trainer, you’ll see:

Add a Workout Class: Create a new class.
Delete a Workout Class: Remove an existing class.
Update a Workout Class: Modify a class.
View My Workout Classes: See all classes you’re teaching.
Buy Membership: Purchase a membership.
Logout: Return to the main menu.

