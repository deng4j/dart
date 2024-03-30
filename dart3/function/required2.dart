//表示 name 和age 是必须传入的命名参数
class Person {
  String name;
  int age;
  Person({required this.name,required this.age});  //表示 name 和age 必须传入

  String getName() {
    return "${this.name}---${this.age}";
  }
}


void main(args) {
   Person p=new Person(
     name: "张三",
     age: 20
   );
   print(p.getName());
}
