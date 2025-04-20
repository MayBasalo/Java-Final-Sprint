package GymApp.models.childclasses;

import GymApp.models.User;
import GymApp.models.enums.UserRole;

public class Member extends User {
    public Member (String username, String password, String email, String phoneNumber, String address) {
        super(username, password, email, phoneNumber, address, UserRole.MEMBER);
    }
}
