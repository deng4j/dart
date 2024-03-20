// 中括号[ ] 包含的参数为位置可选参数
String getPersionInfo(String name, [int? age, String? sex]) {
  return "name : $name   ;    age : $age    ;    sex : $sex";
}

void main(List<String> args) {
  print(getPersionInfo("name"));                // 输出name : name   ;    age : null    ;    sex : null
  print(getPersionInfo("name", 8));
}