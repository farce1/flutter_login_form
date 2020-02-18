class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email.';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 6) {
      return 'Your password must be longer than 6 characters.';
    }
    return null;
  }
}
