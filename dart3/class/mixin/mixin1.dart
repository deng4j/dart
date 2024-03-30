class Musician {
  // ...
}

// Mixins 和 mixin 类不能有子句， 并且不得声明任何生成构造函数

// 限制可以使用 mixin 的类型
mixin MusicalPerformer on Musician {
  // ...
}
mixin MusicalPerformer1 {
  // ...
}
class SingerDancer extends Musician with MusicalPerformer,MusicalPerformer1 {
  // ...
}