import 'package:flutter/material.dart';

import 'package:multi_store_app/widgets/appbar_widget.dart';
import 'package:multi_store_app/widgets/yellow_button_widget.dart';

class CartScreen extends StatefulWidget {
  final Widget? back;
  const CartScreen({Key? key, this.back}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            leading: widget.back,
            backgroundColor: Colors.white,
            title: const AppBarTittle(
              title: 'Cart',
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_forever,
                    color: Colors.black,
                  ))
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your Cart Is Empty !',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Material(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(25),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.6,
                    onPressed: () {
                      Navigator.canPop(context)
                          ? Navigator.pop(context)
                          : Navigator.pushReplacementNamed(
                              context, '/customer_home');
                      // Navigator.pushReplacement(
                      // context,
                      // MaterialPageRoute(
                      // builder: (context) => const CustomerHomeScreen(),
                      // ));
                    },
                    child: const Text(
                      'continue shopping',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          bottomSheet: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Total: \$ ',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '00.00',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              YelllowButton(
                width: 0.45,
                label: 'CHECK OUT',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
