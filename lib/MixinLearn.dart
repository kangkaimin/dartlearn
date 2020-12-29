class A {
  void getMessage() => print('A');
}

class B {
  void getMessage() => print('B');
}

class P {
  void getMessage() {
    print('P');
  }
}

class D {
  void getMessage() => print('D');
}

class AB extends P with B, D, A {}

class BA extends P with B, A {}

void main() {
  AB ab = AB();
  ab.getMessage();

  BA ba = BA();
  ba.getMessage();

  Client().method();
}

class Animal {
  String name;

  String getName() {
    return name;
  }
}

class Bird extends Animal with Flyer, Walker {}

class Fish extends Animal {}

class Duck extends Bird {}

class Shark extends Fish {}

class Walker {
  void walk() {
    print("I'm walking");
  }
}

mixin Flyer {
  void fly() {
    print("I'm flying");
  }
}

class Super {
  void method() {
    print("Super");
  }
}

class MySuper implements Super {
  @override
  void method() {
    print("MySuper");
  }
}

mixin Mixin on Super {
  void method() {
    super.method();
    print("Mixin");
  }
}

class Client extends MySuper with Mixin{

}

T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}
