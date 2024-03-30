void main(List<String> args) {
  Map person = {"name": "张三", "age": 20};

  person.forEach((key, value) {
    print("$key---$value");
  });
}
