// 简单枚举
enum Color { red, green, blue }

/**
 * 增强型枚举：
 * 1.实例变量必须是final
 * 2.不能在枚举中声明已命名的成员， 因为它会与自动生成的静态 getter 冲突
 */
enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}


void main(List<String> args) {
  print(Color.blue.index);
  print(Color.blue.name);
}