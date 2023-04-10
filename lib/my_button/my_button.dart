import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget image;
  final String text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.image,
    required this.text,
    required this.color,
    required this.radius,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
            ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            image,
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
            ),
            Opacity(
              opacity: 0,
              child: image,
            )
          ],
        ),
      ),
    );
  }
}
