class AppValues {
  static const String emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const String passwordRegex = r'^(?=.*[A-Z])(?=.*\d)[A-Za-z\d@]{6,}$';
  static const String usernameRegex = r'^[a-zA-Z0-9,.-]+$';
}
