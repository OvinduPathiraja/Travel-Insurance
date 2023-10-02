import 'package:flutter/material.dart';

class head2 extends StatelessWidget {
  final double size;
  final String text;

  const head2({
    Key? key,
    this.size = 20,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: size,
          fontWeight: FontWeight.bold),
    );
  }
}
