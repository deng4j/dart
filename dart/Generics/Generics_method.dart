// 泛型方法
T getData<T>(T value) {
  return value;
}
 
void main(List<String> args) {
  print(getData<String>("深圳")); 
}
