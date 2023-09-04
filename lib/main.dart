import 'package:flutter/material.dart';
import 'package:multi_store_app/main_screens/customer_home.dart';

void main(){
  runApp( const MyApp() );
}
class MyApp extends StatelessWidget {
  const MyApp({Key?key}) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CustomerHomeScreen(),
    );
  }
}