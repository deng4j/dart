
// 参数可以为null
void printLength(String? str){
  try {
    print(str!.length); 
  } catch (e) {
     print("str is null"); 
  }
}

void main(List<String> args) {
  printLength(null);
}