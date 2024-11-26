class TValidator {
  static String? validateEmail(String value) {
    if (value == "" || value.isEmpty) {
      return "L'email est requis.";
    }

    // Regex email
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return "Email invalide.";
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value == "" || value.isEmpty) {
      return 'Mot de passe requis.';
    }

    if (value.length < 6) {
      return "Le mot de passe doit contenir au moins 6 caractères.";
    }

    if (value.contains(RegExp(r'[A-Z]'))) {
      return "Le mot de passe doit contenir au moins une majuscule.";
    }

    return null;
  }
}
