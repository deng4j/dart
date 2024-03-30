void main(List<String> args) {
  // 限制元组
  (String, int) record;
  record = ('A string', 123);


  ({int a, bool b}) record1;
  record1 = (a: 123, b: true);
}
