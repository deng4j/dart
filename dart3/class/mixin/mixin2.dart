/**
 * 假设一个需求，我们需要用多个对象表示一些 动物， 诸如 狗、鸟、鱼、青蛙。
 *  1.狗会跑
 *  2.鸟会飞
 *  3.鱼会游泳
 *  4.青蛙是两栖动物，会跑，并且会游泳
 * 
 * 基于如下一些考虑
 * - 动物特性可能会继续增多，并且一个动物可能具备多种技能
 * - 动物种类很多，但是可以归大类。例如 鸟禽、哺乳类
 */

abstract class Animal {}

mixin Run {
  run() {
    print('run');
  }
}

mixin Fly {
  fly() {
    print('fly');
  }
}

mixin Swim {
  swim() {
    print('swim');
  }
}

// ----------------------------------

class Bird extends Animal with Fly {}

class Dog extends Animal with Run {}

class Fish extends Animal with Swim {}

class Frog extends Animal with Run, Swim {}

void main(List<String> args) {
  Bird bird = Bird();
  bird.fly();

  Frog frog = Frog();
  frog.run();
  frog.swim();
}
