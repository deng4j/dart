// 公有私有
class Persion {
  String _name;                            //私有属性
 
  Persion(this._name);                     //公有方法，返回私有属性
 
  getName() {
    return _name;
  }
}
 
void main() {
  Persion man = new Persion("Dart");
  String myName = man.getName();
  print(myName);
}
