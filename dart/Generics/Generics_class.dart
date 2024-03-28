// 泛型类
class Dog<T> {
  T a; 
  Dog(this.a); 

  // 非泛型方法
  T show(){
    return a;
  }

  // 泛型方法，脱离类的泛型指定
  E getData<E>(E value) {
    return value;
  }
}
 
main() {
  Dog dog = new Dog<int>(1); 
  print(dog.show());

  print(dog.getData("泛型方法"));
}