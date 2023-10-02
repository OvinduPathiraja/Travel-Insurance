import 'package:flutter/material.dart';

class head1 extends StatelessWidget {
  final double size;
  final String text;

  const head1({
    Key? key,
    this.size = 32,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: Theme.of(context).colorScheme.primary, 
          fontSize: size, 
          fontWeight: FontWeight.bold),
    );
  }
}
