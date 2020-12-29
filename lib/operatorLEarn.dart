void main() {
  var a = 1;

  a++;
  a + 1;
  a == 1;
  var c = true ? a : 0;
  a is int; // 类型判断

  print(5 / 2);
  print(5 ~/ 2);
  print(5 % 2);

  print("${(1 == 1)}  ${identical(1, 1)}");
  print("${("1" == "1")}  ${identical("1", "1")}");

  /**
   * ======================================================  类型判定运算符
   */
  // obj is Object 总是 true。 但是只有 obj 实现了 T 的接口时， obj is T 才是 true。

  // 使用 as 运算符将对象强制转换为特定类型。 通常，可以认为是 is 类型判定后，被判定对象调用函数的一种缩写形式。 请考虑以下代码：
  // if (emp is Person) {
  // // Type check
  // emp.firstName = 'Bob';
  // }
  // 使用 as 运算符进行缩写：
  // (emp as Person).firstName = 'Bob';

  /**
   * ======================================================  赋值运算符
   */
  // // 将值赋值给变量a
  // a = value;
  // // 如果b为空时，将变量赋值给b，否则，b的值保持不变。
  // b ??= value;
  a ??= 11;

  /**
   * =======================================================   条件表达式
   */
  var visibility = 1 is int ? 'public' : 'private';
  var visibility2 = null ?? "public";

  /**
   * =======================================================  级联运算符 (..)
   */
  var a1 = 1
    ..toString()
    ..bitLength
    ..isOdd
    ..isNaN;

  print("练级运算符 --- $a1");

  print("?. --- ${a1?.isOdd}");
  var a2 = null;
  print("?. --- ${a2?.wodemingzijiaokangkaimin}");

  

}
