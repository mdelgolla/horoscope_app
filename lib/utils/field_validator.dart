extension FieldValidator on String{
  String validatePassword(String value) {
    if (value.isEmpty) {
      return 'Enter password';
    }

    if (value.length < 6) {
      return 'Password is too short';
    }
    return '';
  }

  String validateUsername(String value) {
    if (value.isEmpty) {
      return 'Please enter your username';
    }
    return '';
  }
}