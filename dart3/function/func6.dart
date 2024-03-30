// 匿名函数
var fun = () {
  print("我是匿名方法");
};

var fun1 = (int i) {
  print("我是匿名方法 ：$i");
};
   

void main(List<String> args) {
  fun();  
  fun1(2);  
}
