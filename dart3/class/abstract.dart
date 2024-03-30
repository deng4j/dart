abstract class Animal {  
  // 必须初始化
  String name='';  
  eat(); 
}
class Dog extends Animal{
  //如果没有重写会报错
  @override
  eat() {
    print("狗啃骨头");
  }
}

void main(List<String> args) {
  Dog dog = new Dog();
  dog.eat();
}