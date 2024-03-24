void main() {
  String str = "Hello World";
  String reverse = reveresd(str);
  print(reverse);
}
reveresd(str){
  if(str.isEmpty){
    return str;
  }else{
    return reveresd(str.substring(1)) + str[0];
  }
}