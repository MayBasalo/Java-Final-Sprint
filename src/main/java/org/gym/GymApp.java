package org.gym;

import org.gym.user.User;
import org.gym.user.UserService;
import org.gym.user.childclasses.Admin;
import org.gym.user.childclasses.Member;
import org.gym.user.childclasses.Trainer;
import org.gym.workoutclasses.WorkoutClass;
import org.gym.workoutclasses.WorkoutClassService;
import org.gym.memberships.Membership;
import org.gym.memberships.MembershipService;

import java.sql.SQLException;
import java.util.Scanner;

public class GymApp {
    public static void main(String[] args) throws SQLException {
        UserService userService = new UserService();
        MembershipService membershipService = new MembershipService();
        WorkoutClassService workoutService = new WorkoutClassService();

        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            System.out.println("\n=== Gym Management System ===");
            System.out.println("1. Add a new user");
            System.out.println("2. Login as a user");
            System.out.println("3. Exit");
            System.out.print("Enter your choice: ");

            while (!scanner.hasNextInt()) {
                System.out.println("Invalid input! Please enter a number.");
                scanner.next();
            }

            choice = scanner.nextInt();
            scanner.nextLine(); // Consume newline

            switch (choice) {
                case 1:
                    addNewUser(scanner, userService);
                    break;
                case 2:
                    logInAsUser(scanner, userService, membershipService, workoutService);
                    break;
                case 3:
                    System.out.println("Exiting the program...");
                    break;
                default:
                    System.out.println("Invalid choice! Please select a valid option.");
            }
        } while (choice != 3);

        scanner.close();
    }

    private static void logInAsUser(Scanner scanner, UserService userService, MembershipService membershipService, WorkoutClassService workoutService) {
        System.out.print("Enter username: ");
        String username = scanner.nextLine();
        System.out.print("Enter password: ");
        String password = scanner.nextLine();

        try {
            User user = userService.loginUser(username, password);
            if (user != null) {
                System.out.println("Login Successful! Welcome " + user.getUsername());
                switch (user.getRole().toLowerCase()) {
                    case "admin":
                        showAdminMenu(scanner, user, userService, membershipService, workoutService);
                        break;
                    case "trainer":
                        showTrainerMenu(scanner, user, userService, workoutService);
                        break;
                    case "member":
                        showMemberMenu(scanner, user, userService, membershipService);
                        break;
                    default:
                        System.out.println("Unknown role!");
                }
            } else {
                System.out.println("Login Failed! Invalid credentials.");
            }
        } catch (Exception e) {
            System.out.println("An error occurred while logging in.");
            e.printStackTrace();
        }
    }

    private static void showAdminMenu(Scanner scanner, User user, UserService userService, MembershipService membershipService, WorkoutClassService workoutService) {
        if (user instanceof Admin) {
            ((Admin) user).printAdminDashboard();
        }

        int choice;
        do {
            System.out.println("\n--- Admin Menu ---");
            System.out.println("1. View all users");
            System.out.println("2. Delete user");
            System.out.println("3. View all memberships");
            System.out.println("4. View total revenue");
            System.out.println("0. Logout");
            System.out.print("Choice: ");
            choice = scanner.nextInt();
            scanner.nextLine(); // consume newline
