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
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('images/glogo.png'),
            text: 'Login with Google',
            color: Colors.white,
            radius: 4,
            onPressed: () {},
          ),
          MyButton(
            image: Image.asset('images/flogo.png'),
            text: 'Login with Google',
            color: Colors.blue,
            radius: 4,
            onPressed: () {},
          ),
          MyButton(
            image: Image.asset('images/flogo.png'), //Icons.email_rounded,
            text: 'Login with Email',
            color: Colors.green,
            radius: 4,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
