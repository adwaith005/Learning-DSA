bool isValidParentheses(String s) { 
  List<String> stack = [];
  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (char == '(' || char == '[' || char == '{') {
      stack.add(char);
    } else {
      if (stack.isEmpty ||
          (char == ")" && stack.last != "(") ||
          (char == "]" && stack.last != "[") ||
          (char == "}" && stack.last != "{")) {
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  String testString1 = "(){}[]";
  String testString2 = "([)]";
  String testString3 = "({[])}";
  print("Test String 1: ${isValidParentheses(testString1)}");
  print("Test String 2: ${isValidParentheses(testString2)}");
  print("Test String 3: ${isValidParentheses(testString3)}");
}
