import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: CupertinoSearchTextField(),
            bottom: const TabBar(
                indicatorColor: Colors.amber,
                indicatorWeight: 6,
                isScrollable: true,
                tabs: [
                  RepeatedTab(label: 'Men'),
                  RepeatedTab(label: "Women"),
                  RepeatedTab(label: 'Shoes'),
                  RepeatedTab(label: "Bags"),
                  RepeatedTab(label: "Electronic"),
                  RepeatedTab(label: 'Accessories'),
                  RepeatedTab(label: 'Home&Garden'),
                  RepeatedTab(label: "Kids"),
                  RepeatedTab(label: 'Beauty'),
                ])),
        body: const TabBarView(children: [
          Center(
              child: Text(
            'MenSc',
          )),
          Center(
              child: Text(
            'Women',
          )),
          Center(
              child: Text(
            'Shoescreen',
          )),
          Center(
              child: Text(
            'bagsscreen',
          )),
          Center(
              child: Text(
            'electronics screen',
          )),
          Center(
              child: Text(
            'accessories screen',
          )),
          Center(
              child: Text(
            'home and garden screen',
          )),
          Center(
              child: Text(
            'Kids screen',
          )),
          Center(
              child: Text(
            'beauty screen',
          )),
        ]),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({Key? key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}
