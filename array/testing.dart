void main() {
  String text = "The quick brown fox jumps over the lazy gigantic dog";
  String longestword = findlogestword(text);
  print("the longest word in the sentance is $longestword");
}

String findlogestword(String text) {
  List<String> words = text.split(" ");
  String longesrword = '';

  for (String word in words) {
    if (word.length > longesrword.length) {
      longesrword = word;
    }
  }
  return longesrword;
}
