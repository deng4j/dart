/**
 * Object是所有类的基类
 * 
 * 面向对象：封装，继承，多态
 */
class Person {
  String name; //属性
  int age;
  // 注意：最新版本的dart中需要初始化不可为null的实例字段，如果不初始化的话需要在属性前面加上late
  late int id;

  Person(this.name, this.age); //默认构造函数，当实例化一个对象时，会自动调用到该函数

  getInfo() {
    print("name : $name  age : $age");
  }
}

void main() {
  Person man = new Person("ShenZhen", 40); //实例化对象（调用了默认构造函数）
  man.getInfo();
}
