void main() {
  params();

  // 使用构造函数
  var p1 = Point(2, 2);
  var p2 = Point.fromMap({'x': 1, 'y': 2});

  //
  constructionLearn();

  1.runtimeType.runtimeType.runtimeType;
}

void constructionLearn() {}

/**
 * 成员变量
 */
void params() {
  var point = Point(1, 2);

  num distance = point.distanceTo(Point(4, 4));

  Point point2 = null;
  // 使用 ?. 来代替 . ， 可以避免因为左边对象可能为 null ， 导致的异常：
  point2?.x;

  print("point2?.x = ${point2?.x}");
  if (point2 == null) {}
}

/**
 *
 */
class Point {
  int x;
  int y;

  //
  Point(this.x, this.y);

  //
  Point.fromJson({this.x, this.y});

  Point.fromMap(Map map) {}

  // 命名构造函数
  Point.origin() {
    x = 0;
    y = 0;
  }

  // 指向主构造函数
  Point.alongXAxis(num x) : this(x, 0);

  int distanceTo(Point point) {
    return 10;
  }
}

// ===================================================  父类构造函数   =================================================
class Person {
  int age;
  String firstName;

  Person.creat2e(int age, String name) : age = 0 + 1 {
    print("name - " + name);
  }

  Person.create(String name)
      : age = 11,
        firstName = createName() {
    print("name - " + name);
  }

  static createName() {
    return "111";
  }
}

class Employee extends Person {
  Employee() : super.create(createName());

  // Employee(String name) : super.create(name);

  Employee.asd(String name) : super.create(name);

  static String createName() {
    return "name";
  }

// ======================================================================================================================

}

// =================================================================    工厂构造函数     =====================================================================
// 当执行构造函数并不总是创建这个类的一个新实例时，则使用 factory 关键字。 例如，一个工厂构造函数可能会返回一个 cache 中的实例， 或者可能返回一个子类的实例。
class Logger {
  final String name;
  bool mute = false;

  // 从命名的 _ 可以知，
  // _cache 是私有属性。
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

var logger = Logger('UI');

// ========================================================== Getter  And  Setter =========================================================
class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, {this.height});

  // 定义两个计算属性： right 和 bottom。
  num get right => left + width;

  set right(num value) => left = value - width;

  num get bottom => top + height;

  set bottom(num value) => top = value - height;
}

class Parent {
  int age = 11;
  var name = "baba";

  int getAge() {
    return age;
  }

  String getName() {
    return name;
  }
}

class Child implements Parent {
  @override
  // TODO: implement age
  int get age => 11;

  @override
  set age(int _age) {
    // TODO: implement age
  }

  @override
  String name;

  @override
  int getAge() {
    // TODO: implement getAge
    throw UnimplementedError();
  }

  @override
  String getName() {
    Child3 child3 = Child3();
    Child3 child33 = Child3();

    Child3 child34 = child3 + child33;

    // TODO: implement getName
    throw UnimplementedError();
  }
}

class Child2 implements Child {
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Child3 extends Parent {
  @override
  int get age {
    return 11;
  }

  Child3 operator +(Child3 child3) {
    return this;
  }

  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }
}
