class Persion {
  String name ;
  int age ;
  Persion(this.name,this.age);
  void show() {
    print("name : $name  and  age : $age");
  }
}

// 子类可以重写父类方法，
class Superman extends Persion{
  Superman(String name, int age) : super(name, age);
}
 
void main() {
  Superman man = new Superman("深圳",40); 
  man.show(); 
}