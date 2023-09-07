import 'package:flutter/material.dart';
import 'package:multi_store_app/widgets/appbar_widget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key?key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
          title: AppBarTittle(title: 
          'WishlistScreen',
          ),
          leading: AppBarBackIconButton(
            
          ),
      ),
    );
  }
}