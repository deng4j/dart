void show(List list) {
  try {
    print(list[10]);
  } on RangeError catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }
}

void main(List<String> args) {
  show(List.of([1, 2, 3]));
}
