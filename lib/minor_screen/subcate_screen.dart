import 'package:flutter/material.dart';

class SubCategoryProduct extends StatelessWidget {
  final String subcateName;
  const SubCategoryProduct({Key? key, required this.subcateName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subcateName),
      ),
    );
  }
}
