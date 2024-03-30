abstract class A {
  doA() {}
}

abstract class B {
  doB() {}
}

class C implements A, B {
  @override
  doA() {
    print("C doA");
  } 
  @override
  doB() {
    print("C doB");
  }
}

void main(List<String> args) {
  C c = new C();
  c.doA();
  c.doB();
}
