void main(List<String> args) {
  for (var v in naturalsDownFrom(10)) {
    print(v);
  }
}

// 使用yield*优化从嵌套生成器里读取序列值
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    print('----' + n.toString());
    yield* naturalsDownFrom(n - 1);
  }
}
