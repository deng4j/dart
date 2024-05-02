void main(List<String> args) async {
  var s = Stream.fromIterable([1,2,3]);
  // Stream要用await修饰for，否则会阻塞
  await for(var v in s){
    print(v);
  }
}
