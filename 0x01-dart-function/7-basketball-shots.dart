int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calcul des points pour l'équipe A
  final pointsA = (teamA['Free throws'] ?? 0) * 1 +
                (teamA['2 pointers'] ?? 0) * 2 +
                (teamA['3 pointers'] ?? 0) * 3;

  // Calcul des points pour l'équipe B
  final pointsB = (teamB['Free throws'] ?? 0) * 1 +
                (teamB['2 pointers'] ?? 0) * 2 +
                (teamB['3 pointers'] ?? 0) * 3;

  // Comparaison des points pour déterminer le gagnant
  if (pointsA > pointsB) {
    return 1; // L'équipe A gagne
  } else if (pointsA < pointsB) {
    return 2; // L'équipe B gagne
  } else {
    return 0; // Égalité
  }
}
