import 'package:flutter/material.dart';
import 'package:study_flutter_07_codingchef03/my_button/my_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: buildButton(),
    );
  }

  Widget buildButton() {
    forward(5);
    test1();
    test2();
    test3();
    test4();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('images/glogo.png'),
            text: 'Login with Google',
            bgcolor: Colors.white,
            txtcolor: Colors.black87,
            radius: 4,
            onPressed: () {},
          ),
          MyButton(
            image: Image.asset('images/flogo.png'),
            text: 'Login with Google',
            bgcolor: Colors.blue,
            txtcolor: Colors.white,
            radius: 4,
            onPressed: () {},
          ),
          MyButton(
            image: Image.asset('images/flogo.png'), //Icons.email_rounded,
            text: 'Login with Email',
            bgcolor: Colors.green,
            txtcolor: Colors.white,
            radius: 4,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

void forward(int move) {
  print('--- forward($move) -------------');
  for (int i = 1; i <= move; i++) {
    print('$i칸 이동했습니다.');
  }
}

void test1() {
  print('--- test1() -------------');
  List<String> rainbow = ['빨, 주, 노, 초, 파, 남, 보'];

  for (int i = 0; i < rainbow.length; i++) {
    print(rainbow[i]);
  }
}

void test2() {
  print('--- test2() -------------');
  List<String> rainbow = ['빨', '주', '노', '초', '파', '남', '보'];

  for (int i = 0; i < rainbow.length; i++) {
    print(rainbow[i]);
  }
}

void test3() {
  print('--- test3() -------------');
  List<String> rainbow = ['빨', '주', '노', '초', '파', '남', '보'];

  for (String x in rainbow) {
    print(x);
  }
}

void test4() {
  print('--- test4() -------------');
  List<String> rainbow = ['빨', '주', '노', '초', '파', '남', '보'];

  for (var name in rainbow) {
    print(name);
  }
}
