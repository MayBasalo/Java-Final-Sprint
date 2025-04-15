# 🏋️‍♂️ Gym Management System (Console-Based Java Application)

This project is a **console-based Gym Management System** built using **Java**, **PostgreSQL**, and **Maven**. It simulates the operations of a gym where different users—Admins, Trainers, and Members—can register, log in, manage memberships, workout classes, and more, all with **role-based access control (RBAC)**.

---

## 📌 Functional Requirements

### ✅ User Registration & Authentication

- Users can register with:
  - `username`, `password`, `email`, `phone number`, `address`, and `role` (Admin, Trainer, or Member).
- Registered users can **log in** and view a **role-specific menu**.
- Passwords are securely hashed using **BCrypt** before being stored in the database.
- Classes involved:
  - `User`, `UserDAO`, `UserService`
  - `Admin`, `Trainer`, `Member` (extend from `User`)

---

### 💳 Membership Management

- **Members** and **Trainers** can purchase gym memberships.
- **Admins** can view all memberships and track **total revenue**.
- Classes involved:
  - `Membership`, `MembershipDAO`, `MembershipService`

---

### 🧘 Workout Class Management

- **Trainers** can:
  - Create, update, and delete workout classes.
  - View a list of all their assigned classes.
- **Members** can:
  - Browse available workout classes.
- Classes involved:
  - `WorkoutClass`, `WorkoutClassDAO`, `WorkoutClassService`

---

## 🧑‍💼 Role-Based Functionality

### 👑 Admin
- View all users and their contact information.
- Delete users from the system.
- View all memberships and total annual revenue.

### 🧑‍🏫 Trainer
- Manage workout classes (create, update, delete).
- View their own classes.
- Purchase gym membership.

### 🧍 Member
- Browse available workout classes.
- Purchase gym memberships.
- View total membership expenses.

---

## 🗄️ Database Integration

- Backend powered by **PostgreSQL**.
- Implements full **CRUD operations** for:
  - Users
  - Memberships
  - Workout Classes
- Suggested schema:

