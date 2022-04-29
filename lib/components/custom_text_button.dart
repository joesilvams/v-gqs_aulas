import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Widget page;
  final String text;
  final Function()? onPressed;

  const CustomTextButton({
    Key? key,
    required this.page,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 10,
      ),
      child: TextButton(
        onPressed: onPressed ??
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page,
                ),
              );
            },
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.amber,
          ),
        ),
      ),
    );
  }
}
