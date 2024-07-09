bool isPalindrome(String s) {
  // Vérifier si la longueur de la chaîne est inférieure à 3
  if (s.length < 3) {
    return false;
  }

  // Initialiser deux pointeurs : un au début et un à la fin de la chaîne
  int start = 0;
  int end = s.length - 1;

  // Parcourir la chaîne jusqu'à ce que les deux pointeurs se croisent
  while (start < end) {
    // Comparer les caractères aux positions start et end
    if (s[start] != s[end]) {
      return false;  // Si les caractères ne sont pas identiques, ce n'est pas un palindrome
    }
    start++;  // Avancer le pointeur de début
    end--;    // Reculer le pointeur de fin
  }

  return true;  // Si tous les caractères sont identiques, c'est un palindrome
}