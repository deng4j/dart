// 用{ }包含的参数为命名可选参数
String getPersionInfo(String name, {int? age, String sex = "man"}) {
  return "name : $name  -----  age : $age  -----  sex : $sex";
}

void main(List<String> args) {
  print(getPersionInfo("Dart", age: 8));            
  print(getPersionInfo("Dart", sex: "girl"));          
  print(getPersionInfo("Dart", sex: "girl", age: 8)); 
}