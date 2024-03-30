void main(List<String> args) {
  var (a, b) = ('left', 'right');
  (b, a) = (a, b);
  print('$a $b');
}
