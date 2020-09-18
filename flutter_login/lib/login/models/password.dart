enum PasswordValidationError { empty }

class Password {
  static PasswordValidationError validator(String value) {
    return value?.isNotEmpty == true ? null : PasswordValidationError.empty;
  }
}
