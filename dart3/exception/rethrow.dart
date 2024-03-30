void misbehave() {
  try {
    dynamic foo = true;
    print(foo++);
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // 重新抛出异常
  }
}

void main() {
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}