import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "";
  int maxLength = 0;

  // Parcourir toutes les sous-chaînes possibles
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j);
      // Vérifier si la sous-chaîne est un palindrome et si elle est plus longue que la précédente
      if (isPalindrome(substring) && substring.length > maxLength) {
        longest = substring;
        maxLength = substring.length;
      }
    }
  }

  // Si maxLength n'a pas changé, cela signifie qu'aucun palindrome n'a été trouvé
  return maxLength > 0 ? longest : "none";
}