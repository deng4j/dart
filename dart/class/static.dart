class Persion {
  // 静态变量
  static String name = "深圳"; 
 
  static void show() {
    print("name : $name");
  }
}
 
void main() {
  print(Persion.name);   
}