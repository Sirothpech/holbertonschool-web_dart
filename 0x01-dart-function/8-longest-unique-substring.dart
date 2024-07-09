String longestUniqueSubstring(String str) {
    int start = 0;
    int end = 0;
    int maxLen = 0;
    String result = "";
    Set<String> uniqueChars = {};

    // Boucle pour parcourir la chaîne
    while (end < str.length) {
        // Vérifier si le caractère est dans l'ensemble
        if (uniqueChars.contains(str[end])) {
            // Déplacer le pointeur de début et retirer les caractères de l'ensemble
            while (uniqueChars.contains(str[end])) {
                uniqueChars.remove(str[start]);
                start++;
            }
        }
        // Ajouter le caractère à l'ensemble
        uniqueChars.add(str[end]);

        // Vérifier et mettre à jour la longueur maximale et le résultat
        if ((end - start + 1) > maxLen) {
            maxLen = end - start + 1;
            result = str.substring(start, end + 1);
        }

        // Incrémenter le pointeur de fin
        end++;
    }

    return result;
}
