import 'package:flutter/material.dart';
import 'package:multi_store_app/widgets/appbar_widget.dart';

List<String> label = [
  'My store',
  'orders',
  'edit products',
  'manage products',
  'balance',
  'statics',
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const AppBarTittle(title: 'Dashboard'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
            crossAxisSpacing: 50,
            mainAxisSpacing: 50,
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return Card(
                elevation: 15,
                shadowColor: Colors.purpleAccent.shade200,
                color: Colors.blueGrey.withOpacity(0.7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      icons[index],
                      size: 50,
                      color: Colors.yellowAccent,
                    ),
                    Text(
                      label[index].toUpperCase(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.yellowAccent,
                        letterSpacing: 1,
                        fontFamily: 'Acme',
                      ),
                    ),
                  ],
                ),
              );
            })),
      ),
    );
  }
}
