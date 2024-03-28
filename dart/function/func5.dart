// 当函数体的内容只有一句时，可用箭头指向表示
void main(List<String> args) {
  List list = [2, 4, 6, 5, 8];
  var newList1 = list.map((e) => e > 5 ? 5 : e);
  print(newList1);
}
