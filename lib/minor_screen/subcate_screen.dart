import 'package:flutter/material.dart';

class SubCategoryProduct extends StatelessWidget {
  final String maincategName;
  final String subcateName;
  const SubCategoryProduct(
      {Key? key, required this.subcateName, required this.maincategName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          subcateName,
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Center(child: Text(maincategName)),
    );
  }
}
