void main() {
    String text = "The quick brown fox jumps over the lazy gigantic dog";
  String longestword = findlongestword(text);
  print('the longest word is  $longestword');
}

String findlongestword(String text) {
  List<String> words = text.split(" "); 
  String longestword = "";

  for (String word in words) {
    if (word.length > longestword.length) {
      longestword = word;
    }
  }
  return longestword;
}
