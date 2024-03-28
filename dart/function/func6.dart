// 当函数体的内容只有一句时，可用箭头指向表示
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
