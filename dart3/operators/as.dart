class Persion {
  void show() {
    print("Persion");
  }
}

class Man extends Persion{
    void show() {
    print("Man");
  }
}

void main() {
  Persion persion = new Man();
  persion.show();

  // 强转
  if (persion is Man) {
    Man man = persion as Man;
    man.show();
  }

}