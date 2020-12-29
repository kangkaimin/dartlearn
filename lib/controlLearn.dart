// I如果要迭代一个实现了 Iterable 接口的对象， 可以使用 forEach() 方法， 如果不需要使用当前计数值， 使用 forEach() 是非常棒的选择；
//
// candidates.forEach((candidate) => candidate.interview());
// 实现了 Iterable 的类（比如， List 和 Set）同样也支持使用 for-in 进行迭代操作 iteration ：
//
// var collection = [0, 1, 2];
// for (var x in collection) {
// print(x); // 0 1 2
// }

void main() {
  [1, 2, 3].where((element) => element != 2).forEach((element) {
    print("element --- $element");
  });

  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      print("element --- CLOSED");
      break;

    case "asd":
    case 'NOW_CLOSED':
      break;

    case "11": // 接着 哪一个 继续运行
      print("element --- CLOSED");
      continue last;

    last:
    case "":
      break;
  }

 // assert 的第一个参数可以是解析为布尔值的任何表达式。 如果表达式结果为 true ， 则断言成功，并继续执行。 如果表达式结果为 false ， 则断言失败，并抛出异常 (AssertionError) 。
  assert(false);
  assert(false,"");
}
