class Persion {
  String _name;
 
  Persion(this._name);
 
  get getName {
    return _name;
  }
 
  set setName(value) {
    _name = value;
  }
}
 
void main() {
  Persion man = new Persion("深圳");          
  print(man.getName);     
 
  man.setName = "惠州"; 
  print(man.getName);
}