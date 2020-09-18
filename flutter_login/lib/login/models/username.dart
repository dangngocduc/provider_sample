
enum UsernameValidationError { empty }

class Username {
  static UsernameValidationError validator(String value) {
    return value?.isNotEmpty == true ? null : UsernameValidationError.empty;
  }
}
