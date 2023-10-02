import 'package:flutter/material.dart';

class FText extends StatelessWidget {
  final double size;
  final String text;

  const FText({
    Key? key,
    this.size = 15,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
        fontSize: size,
      ),
    );
  }
}
