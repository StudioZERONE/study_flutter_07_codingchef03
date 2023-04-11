import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget image;
  final String text;
  final Color bgcolor;
  final Color txtcolor;
  final double radius;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.image,
    required this.text,
    required this.bgcolor,
    required this.txtcolor,
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
          backgroundColor: MaterialStateProperty.all(bgcolor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                style: TextStyle(
                  color: txtcolor,
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
      ),
    );
  }
}
