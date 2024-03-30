// 多态
abstract class Animal{
  eat();
} 

abstract class Mammal{
  viviparous();
}

class Dog1 extends Animal implements Mammal{
  @override
  eat() {
    print("狗啃骨头");
  }
  
  @override
  viviparous() {
    print('胎生');
  }
}

void main(List<String> args) {
  Animal dog1 = new Dog1();
  Mammal dog2 = new Dog1();

  dog1.eat();
  dog2.viviparous();
}