class RegisterRequest {
  String firstName;
  String lastName;
  String username;
  String email;
  String phoneNumber;
  String password;
  String confirmPassword;
  String profile;
  String role;

  RegisterRequest({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.confirmPassword,
    this.profile = '',
    this.role = 'USER',
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'confirmPassword': confirmPassword,
      'profile': profile,
      'role': role,
    };
  }
}