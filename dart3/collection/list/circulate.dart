void main() {
  List myList = ['香蕉', '苹果', '西瓜'];

  for (var item in myList) {
    print(item);
  }

  print("-----------------------------------------");

  myList.forEach((value) {
    print("$value");
  });
}
