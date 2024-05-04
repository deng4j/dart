// 公有私有
class Persion {
  String _name;                            //私有属性
 
  Persion(this._name);                     
 
  //公有方法，返回私有属性
  getName() {
    return _name;
  }

  void _do(){
    print("私有方法");
  }
}

// 私有，其他包不可见
int _a = 1;
 
void main() {
  Persion man = new Persion("Dart");
  String myName = man.getName();
  print(myName);
}
