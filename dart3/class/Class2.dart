class Person {
  late String name;
  late int age;
  // 注意：最新版本的dart中需要初始化不可为null的实例字段，如果不初始化的话需要在属性前面加上late
  late int id;

  Person(this.name, this.age); //默认构造函数，当实例化一个对象时，会自动调用到该函数

  // 命名构造函数
  Person.setInfo(String name, int age) { 
    this.name = name;
    this.age = age;
  }
  getInfo() {
    //方法
    print("name : $name  age : $age");
  }
}

void main() {
  Person man = new Person.setInfo("ShenZhen", 40);
  man.getInfo();
}
