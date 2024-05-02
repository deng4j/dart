void main(List<String> args) async {
  await for (var v in async_yield(10)) {
    print(v);
  }
}

// 使用async*/yield定义异步生成器
Stream<int> async_yield(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

