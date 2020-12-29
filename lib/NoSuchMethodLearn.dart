class Person {
  @override  //overring noSuchMethod
  noSuchMethod(Invocation invocation) => 'Got the ${invocation.memberName} with arguments ${invocation.positionalArguments}';
}

main(List<String> args) {
  dynamic person = new Person(); // person is declared dynamic hence staifies the first point
  print(person.missing('20','shubham'));  //We are calling an unimplemented method called 'missing'
}