// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginScreen {
  final String userName;
  final String password;
  LoginScreen({
    required this.userName,
    required this.password,
  });
}

// constants
List<LoginScreen> loginScreen = [
  LoginScreen(
    userName: 'test',
    password: '123',
  )
];
