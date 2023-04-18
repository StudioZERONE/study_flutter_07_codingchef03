void testFutureMethod() async {
  print('------------------------------');
  methodA();
  await methodB();
  await methodC('testFutureMethod');
  methodD();
  print('------------------------------');
}

methodA() {
  print('A');
}

methodB() async {
  print('B start');
  await methodC('B');
  print('B end');
}

methodC(String from) async {
  print('C start from $from');
  Future(() {
    print('---- Future Start: $from ----');
    print('C running Future from $from');
  }).then((_) {
    print('C end of Future from $from');
    print('---- Future Then end: $from ----');
  });
  print('C end from $from');
}

methodD() {
  print('D');
}
