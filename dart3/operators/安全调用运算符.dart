class Persion {
  String name ;
  int age ;
 
  Persion(this.name,this.age);
 
  void show() {
    print("name : $name  and  age : $age");
  }
}

void main() {
  Persion? man;
  // 安全调用运算符，可以避免空指针异常
  man?.show();
}