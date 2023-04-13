import 'dart:math';

Set<int> lottoNumber() {
  final random = Random();
  final Set<int> lottoSet = {};
  //var num;

  while (lottoSet.length != 6) {
    //num = random.nextInt(45) + 1;
    lottoSet.add(random.nextInt(45) + 1);
  }

  print('당첨 번호 -------------------');
  print(lottoSet.toList());

  return lottoSet;
}

Set<int> myNumber() {
  final random = Random();
  final Set<int> mySet = {};
  //var num;

  while (mySet.length != 6) {
    //num = random.nextInt(45) + 1;
    mySet.add(random.nextInt(45) + 1);
  }

  print('내 번호 -------------------');
  print(mySet.toList());

  return mySet;
}

void checkNumber(lottoSet, mySet) {
  int match = 0;

  for (int lotto in lottoSet) {
    for (int myNum in mySet) {
      if (lotto == myNum) {
        match++;
        print('-------------------');
        print('당첨번호: $myNum');
        print('-------------------');
      }
    }
  }
  print('$match개의 당첨번호가 있습니다.');
  print('-------------------');
}
