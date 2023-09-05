import 'package:flutter/material.dart';

class AppBarBackIconButton extends StatelessWidget {
  const AppBarBackIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

class AppBarTittle extends StatelessWidget {
  const AppBarTittle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      
      style: const TextStyle(
          color: Colors.amber,
          fontFamily: 'Acme',
          fontSize: 28,
          letterSpacing: 1.5),
    );
  }
}
