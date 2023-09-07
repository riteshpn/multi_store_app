import 'package:flutter/material.dart';
import 'package:multi_store_app/widgets/appbar_widget.dart';

class SupplierOrder extends StatelessWidget {
  const SupplierOrder({Key?key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 0,
 backgroundColor: Colors.white,
          title: AppBarTittle(title: 
          'Supplier Order',
          ),
          leading: AppBarBackIconButton(
            
          ),
      ),
    );
  }
}