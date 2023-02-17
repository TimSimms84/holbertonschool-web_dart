int whoWins(Map<String, int> team1, Map<String, int> team2) {
  var team1Score = addPoints(team1);
  var team2Score = addPoints(team2);
  if (team1Score > team2Score)
    return 1;
  if (team2Score > team1Score)
    return 2;
  return 0;
}

Map<String, num> pointValues = {
  'Free throws': 1,
  '2 pointers': 2,
  '3 pointers': 3,
};

num addPoints(Map<String, int> team) {
  num sum = 0;
  for (var entry in team.entries) {
    if (pointValues.containsKey(entry.key)) {
      sum += entry.value * pointValues[entry.key]!;
    }
  }
  return sum;
}
