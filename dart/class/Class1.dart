// 面向对象：封装，继承，多态
class Persion {
  String name; //属性
  int age;

  Persion(this.name, this.age); //默认构造函数，当实例化一个对象时，会自动调用到该函数

  getInfo() {
    //方法
    print("name : $name  age : $age");
  }
}

void main() {
  Persion man = new Persion("ShenZhen", 40); //实例化对象（调用了默认构造函数）
  man.getInfo();
}
