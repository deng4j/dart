// 当mixin 的函数名是一样的，会发生覆盖
class S {
  fun() => print('A');
}

mixin MA {
  fun() => print('MA');
}
mixin MB {
  fun() => print('MB');
}

class A extends S with MA, MB {}

class B extends S with MB, MA {}

// ----------------------------------------------------------
// mixin 可以实现类似多重继承的功能，但是实际上和多重继承又不一样。多重继承中相同的函数执行并不会存在 ”父子“ 关系
// mixin 实际上实现了一条继承链
// 声明 mixin 的顺序代表了继承链的继承顺序，声明在后面的 mixin，一般会最先执行
class N {
  fun() => print('n');
}

mixin MC on N {
  fun() {
    super.fun(); // 调用N中的fun()
    print('MC');
  }
}
mixin MD on N {
  fun() {
    super.fun(); // 调用MC中的fun()
    print('MD');
  }
}

class C extends N with MC, MD {}

class D extends N with MD, MC {}

void main(List<String> args) {
  A a = A();
  a.fun();
  B b = B();
  b.fun();

  print('------------------------------');

  C c = C();
  c.fun();
  D d = D();
  d.fun();
}
