class Persion {
  String name ;
  int age ;
 
  Persion(this.name,this.age);
 
  void show() {
    print("name : $name  and  age : $age");
  }
}

void main() {
  Persion man = new Persion("深圳",40);
  // 在对象的后面使用级联符号“..”加属性或方法,会返回对象的本身
  man..name = "惠州"                                   
     ..age=50
     ..show(); 
}