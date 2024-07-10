class Password {
    String _password = "";

    Password({password}) {
        this._password = password;
    }

    bool isValid() {
        bool hasGoodLength = _password.length >= 8 && _password.length <= 16;
        bool hasUppercase = _password.contains(new RegExp(r'[A-Z]'));
        bool hasLowercase = _password.contains(new RegExp(r'[a-z]'));
        bool hasDigits = _password.contains(new RegExp(r'[0-9]'));

        return hasGoodLength && hasUppercase && hasLowercase && hasDigits;
    }

    @override
    String toString() {
        return ("Your Password is: $_password");
    }
}