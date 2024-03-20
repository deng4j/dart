void main(List<String> args) {
  var persion1 = new Map();
  persion1["name"] = "张三";
  persion1["age"] = "9";
  print(persion1); //输出 {name: 张三, age: 9}
  print(persion1['name']); //输出 张三
  print(persion1['age']); //输出 9
}
