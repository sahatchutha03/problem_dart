void main() {
  Map<String, int> scores = {
    'John': 90,
    'Jane': 86,
    'Alice': 75,
    'Bob': 65,
  };
  String highestScorer = getHighestScorer(scores);
  print('ผู้เล่นที่ได้คะแนนสูงสุด: $highestScorer');
}

String getHighestScorer(Map<String, int> scores) {
  String highestScorer = '';
  int highestScore = -1;

  
  scores.forEach((player, score) {
    if (score > highestScore) {
      highestScore = score;
      highestScorer = player;
    }
  });

  return highestScorer;
}