package utilities;

import com.github.javafaker.Faker;

import java.util.Random;

public class UserGenerator {

    public static Faker faker = new Faker();


    public static String createEmail(){
        String email = faker.internet().emailAddress();
        return email;
    }

    public static String createUserName(){
        String userName = faker.name().username();
        return userName;
    }

    public static String createFirstName(){
        String firstName = faker.name().firstName();
        return firstName;
    }

    public static String createLastName(){
        String lastName = faker.name().lastName();
        return lastName;
    }

    public static String createPassword(){
        String password = faker.internet().password();
        return password;
    }

    public static String createPhone(){
        String phone = faker.phoneNumber().cellPhone().replace("."," ");
        return phone;
    }

    public static int createId(){
        int createId = new Random().nextInt(100);
        return createId;
    }

    public static int createUserStatus(){
        int createUserStatus = new Random().nextInt(10);
        return createUserStatus;
    }

}
