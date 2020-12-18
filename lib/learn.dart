import 'dart:math';

int finalNumBefore = 10;
final int finalNum = finalNumBefore;

const constNum = 1;

const constNum2 = constNum << 2;

dynamic k = "string";


main() {

  11
    ..toString()
    ..abs()
    ..floor();

  num num2 = 1;

  double z = 1;
  // double a = finalNumBefore.toDouble();

  finalNumBefore = finalNumBefore * int.parse("1000") >> 2;

  String piAsString = 3.1415926.toStringAsFixed(2);

  assert("String" == k.runtimeType.toString());

  line();
  boolLearn();
  line();
  stringLearn();
  line();
  listLearn();
  line();
  setLearn();
  line();
  mapLearn();
  line();
  runeLearn();
  line();
  symbolLearn();
}

/**
 * 一个 Symbol 对象表示 Dart 程序中声明的运算符或者标识符
 * 代码会被压缩，压缩后方法或者变量的名字湖以北改变，导致无法识别，但是标识符不会变
 * 这个时候就可以通过 Symbol 拿到对应的标识符，然后定位到压缩前的数据
 */
void symbolLearn() {
  // bool checkIf_classAvailableInlibrary(Symbol libraryName,Symbol className){
  //   MirrorSystem
  // }
  //
  // //library name stored as Symbol
  // Symbol lib = Symbol("foo_lib");
  // // class name stored as Symbol
  // Symbol clsToSearch = new Symbol("Foo");
  //
  // if(checkIf_classAvailableInlibrary(lib,clsToSearch)){
  //   print("class found.");
  // }


}

/**
 * Rune 用来表示字符串中的 UTF-32 编码字符。
 */
void runeLearn() {
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));
}

/**
 * Map 学习
 */
void mapLearn() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = Map();
  // var nobleGases = new Map();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  var gifts2 = {'first': 'partridge'};
  gifts2['fourth'] = 'calling birds'; // Add a key-value pair

  gifts2.length;
}

/**
 * Set 学习
 */
void setLearn() {
  var halogens = {'fluorine', 'chlorine', 'bromine'};

  var names23 = new Set<String>();

  var names = <String>{};

  Set<String> names2 = {};

  var names3 = {};
  // print(names3.runtimeType.toString());

  var strSet = {
    "SetA",
    "SetB",
    if (true) "true",
    for (int i = 0; i < 3; i++) "name$i",
    ...?halogens
  };

  strSet.length;

  strSet.addAll(names2);
}

/**
 * List 学习
 */
void listLearn() {
  var list = <num>[1, 1.0];
  var list2 = [1, 1.0];
  print(list.runtimeType.toString());

  var nameList = [
    "kangkaimin",
    "bob",
    if (true) "liuneng",
    for (int i = 0; i < 3; i++) "num$i"
  ];

  var nameMoreList = ["nameMoreList", ...?nameList];

  assert(nameList.length == 6);
  nameList.length = 2;

  print("$nameList");
}

/**
 * bool 学习
 */
void boolLearn() {
  var fullName = "";
  assert(fullName.isEmpty);

  var hitPoints = 0;
  assert(hitPoints <= 0);

  var unicorn;
  assert(unicorn == null);

  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}

/**
 * 分割线
 */
void line() {
  print("---------------------------------------");
}

/**
 * String 学习
 */
void stringLearn() {
  var s1 = "string 1";
  var s2 = '''
  string 1\n
  string 2
  string 3
  ''';

  var s3 = r'\n';

  String emptyStr;

  print(emptyStr?.isEmpty);

  print(s2);
  print(s3);
}
