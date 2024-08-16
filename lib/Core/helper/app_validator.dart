abstract class AppValidators {
  static String? titleValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Title cannot be empty';
    }
    return null;
  }

  static String? noteValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Note cannot be empty';
    }
    return null;
  }

  static String? dateValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Date cannot be empty';
    }
    return null;
  }

  static String? startTimeValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'end Time cannot be empty';
    }
    return null;
  }

  static String? endTimeValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'End time cannot be empty';
    }
    return null;
  }
}
