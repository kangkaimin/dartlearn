import 'package:meta/meta.dart';

// var _nobleGases = {};

var _nobleGases = [];

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

isNuoble() => "";

void main() {
  nameSelectFun(blod: false);
  nameSelectFun(blod: false);
  nameSelectRequiredFun(blod: false);
  positionSelectFun("kkm", "haha");

  // 函数是一等对象,一个函数可以作为另一个函数的参数
  // 将 printElement 函数作为参数传递。
  [
    1,
    2,
  ].forEach(printElement);

  // 函数变量
  Function tempFunction = () {};
  tempFunction();

  // 同样可以将一个函数赋值给一个变量
  var printFun = (msg) {
    print("printFun --- $msg");
  };
  printFun(11);

  /**
   * ==========================================   匿名函数   =================================================
   */
  [1].forEach((element) {
    print("匿名函数 ：$element");
  });

  //  闭包 即一个函数对象，即使函数对象的调用在它原始作用域之外， 依然能够访问在它词法作用域内的变量。
}

/**
 * 命名可选参数
 */
void nameSelectFun({bool blod, bool hidden}) {
  print("from nameSelectFun $blod , $hidden");
}

/**
 * required 参数
 */
void nameSelectRequiredFun({bool blod, @required bool hidden = false}) {
  print("from nameSelectRequiredFun $blod , $hidden");
}

/**
 * 位置可选参数
 */
void positionSelectFun(String from,
    [String name1, String name2 = "defaultName"]) {
  print("from positionSelectFun $from , $name1 , $name2");
}

/**
 * 默认值参数
 */
void defaultParamFun({bool blod = false}) {
  print("from defaultParamFun $blod");
}

void printElement(int element) {
  print("printElement --- $element");

  fun11(name1: "", name2: "");
}

void fun11({String name1 = "", String name2}) {
  name2;
}
