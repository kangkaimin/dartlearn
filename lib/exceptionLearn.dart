void main() {
  try {
    throw FormatException("FormatException");
    throw 1;
  } on FormatException {
    rethrow; // 遇到 FormatException ，不处理这个问题,继续向上层抛出
  } on NullThrownError catch (e) {
    // 遇到 NullThrownError ，不处理这个问题,继续向上层抛出 “The error is NullThrownError”
    throw "The error is NullThrownError";
  } catch (e) {
    // 处理非以上两个问题之外的所有问题
    print("其他的问题：${e.toString()}");
  } finally {
    // 最终的处理逻辑
    // 不管是否抛出异常， finally 中的代码都会被执行。
    // 如果 catch 没有匹配到异常， 异常会在 finally 执行完成后，再次被抛出
    print("finally --------------------------------------------- ");
  }
}
