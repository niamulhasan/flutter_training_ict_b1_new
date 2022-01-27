class FormValidator {
  //validator static method
  static String? validate(
    data, {
    bool required = false,
    int min = 0,
    int max = 20000,
    bool url = false,
    String? match,
    RegExp? regex,
    StringFormat? stringFormat,
  }) {
    String? _errorMsg;
    if (required == true) {
      if (data == null || data.isEmpty) {
        _errorMsg ??= "Field cannot be empty";
      }
    }

    if (min != 0) {
      if (min > data.length) {
        _errorMsg ??= "Data must be of $min length";
      }
    }
    if (max != 20000) {
      if (max < data.length) {
        _errorMsg ??= "Data must not exceed $max characters";
      }
    }

    if (match != null) {
      if (data != match) {
        _errorMsg ??= "$data doesn't match with $match";
      }
    }

    if (stringFormat != null) {
      if (stringFormat == StringFormat.email) {
        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(data)) {
          _errorMsg = "Invalid email";
        }
      }
      if (stringFormat == StringFormat.url) {
        if (!RegExp(r"^http[s]?:\/\/(www\.)?(.*)?\/?(.)*").hasMatch(data)) {
          _errorMsg = "Invalid url";
        }
      }
    }

    if (regex != null) {
      if (!regex.hasMatch(data)) {
        _errorMsg ??= "Invalid input!";
      }
    }

    return _errorMsg;
  }
}

enum StringFormat { email, url, numbers }
