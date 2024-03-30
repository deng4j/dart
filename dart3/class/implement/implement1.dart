// Dart中如果使用普通类或者抽象类做接口类，实现这个接口类的时候要覆写这个接口类所有属性和方法。
// 抽象类中可以定义抽象方法，故建议使用抽象类定义接口。（接口通常是定义规范）
abstract class Animal {
  String size;
  eat();

  Animal(this.size);
}
 
class Dog implements Animal {
  @override
  String size=''; 
  
  @override
  eat() { 
    print("狗啃骨头");
  }
}

void main(List<String> args) {
    Dog dog = new Dog();
    dog.eat();
}