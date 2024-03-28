class Persion {
  String name = "深圳";
  Persion(this.name);
  void show() {
    print("name : $name");
  }
}
 
void main() {
  Persion man=new Persion("name");
  //判断man是否是Persion类型
  if(man is Persion){                          
    print("true");
  }               
}