void main (){
  List<int> num = [1,2,3,4,5,6,7];
  int sum = 0; 
  for(int i = 0 ; i <= num.length ; i++){
    sum = num[i] + 1;
  }
    print('Sum of the list is $sum');

}