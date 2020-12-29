import 'dart:async';

import 'dart:io';

main() {
  print('main Start');

  // // 微任务
  // {
  //   // # 1. 使用 scheduleMicrotask 方法添加
  //   scheduleMicrotask(() {
  //     sleep(Duration(seconds: 5));
  //     print('this is scheduleMicrotask');
  //   });
  //   new Future.microtask(() {
  //     print('this is microtask');
  //   });
  // }
  //
  // // event 事件
  // {
  //   new Future(() {
  //     print('this is my task');
  //   });
  //
  //   new Future.delayed(new Duration(seconds: 0), () {
  //     print('task delayed  2');
  //   });
  //
  //   new Future(() {
  //     sleep(Duration(seconds: 5));
  //     print("5s task");
  //   });
  //
  //   new Future.delayed(new Duration(seconds: 0), () {
  //     print('task delayed  1');
  //   });
  // }


  // ===================================================== Future start ===========================================
  // Future fut = new Future.value(18);
  // // 使用then注册回调
  // fut.then((res) {
  //   print(res);
  // });
  //
  // // 链式调用，可以跟多个then，注册多个回调
  // new Future(() {
  //   print("async task");
  //   return 11;
  // }).then((res) {
  //   double i = 0/0;
  //   throw "错误";
  //   print(i.toString() + " async task complete  ：" + res.toString());
  //   return "hello";
  // }).then((res) {
  //   print("async task after  ：" + res.toString());
  // }).catchError((e) {
  //   print("catchError  ：" + e.toString());
  // });
  // ====================================================== Future end ==================================================


  test();

  print('main Stop');
}

Future checkVersion() async {
  var version = await lookUpVersion();
  return version;
}

String lookUpVersion() {
  sleep(Duration(seconds: 5));
  return "睡眠5秒后的返回";
}



// 模拟耗时操作，调用sleep函数睡眠2秒
doTask() async{
  await sleep(const Duration(seconds:2));
  return "Ok";
}

// 定义一个函数用于包装
test() async {
  var r = await doTask();
  print(r);
}
