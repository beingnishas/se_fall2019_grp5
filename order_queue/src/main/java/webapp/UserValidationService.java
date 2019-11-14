package webapp;

public class UserValidationService {
	public boolean isUserValid(String user, String pass) {
		if (user.equals("daniel") && pass.equals("admin"))
			return true;
		return false;
	}
}
