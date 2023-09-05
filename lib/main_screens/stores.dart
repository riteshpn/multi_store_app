import 'package:flutter/material.dart';
import 'package:multi_store_app/widgets/appbar_widget.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarTittle(title: 'Stores'),
      ),
    );
  }
}
