import 'package:flutter/material.dart';
import 'package:multi_store_app/category/accessories_categ.dart';
import 'package:multi_store_app/category/bags_categ.dart';
import 'package:multi_store_app/category/beauty_categ.dart';
import 'package:multi_store_app/category/electronics_categ.dart';
import 'package:multi_store_app/category/home_garden.dart';
import 'package:multi_store_app/category/kids_categ.dart';
import 'package:multi_store_app/category/men_category.dart';
import 'package:multi_store_app/category/shoes_categ.dart';
import 'package:multi_store_app/category/women_categ.dart';

import 'package:multi_store_app/widgets/fake_search.dart';

List<ItemData> items = [
  ItemData(
    label: 'men',
  ),
  ItemData(
    label: 'woman',
  ),
  ItemData(
    label: 'shoes',
  ),
  ItemData(
    label: 'bags',
  ),
  ItemData(
    label: 'electronics',
  ),
  ItemData(
    label: 'accessories',
  ),
  ItemData(
    label: 'home & garden',
  ),
  ItemData(
    label: 'kids',
  ),
  ItemData(label: 'beauty')
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    for (var element in items) {
      element.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const FakeScreen(),
      ),
      body: Stack(children: [
        Positioned(bottom: 0, left: 0, child: sideNavigation(size)),
        Positioned(bottom: 0, right: 0, child: categView(size)),
      ]),
    );
  }

  Widget sideNavigation(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.2,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _pageController.animateToPage(index,
                  duration: const Duration(
                    milliseconds: 100,
                  ),
                  curve: Curves.bounceOut);
              // for (var element in items) {
              // element.isSelected = false;
              // }

              // setState(() {
              // items[index].isSelected = true;
              // });
            },
            child: Container(
                color: items[index].isSelected == true
                    ? Colors.white
                    : Colors.grey.shade300,
                height: 100,
                child: Center(
                  child: Text(
                    items[index].label,
                  ),
                )),
          );
        },
      ),
    );
  }

  Widget categView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
      child: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          for (var element in items) {
            element.isSelected = false;
          }
          setState(() {
            items[value].isSelected = true;
          });
        },
        scrollDirection: Axis.vertical,
        children: const [
          MencategoryScreen(),
          WomenCategory(),
          ShoeCategory(),
          BagsCategory(),
          ElectronicsCategory(),
          AccessoriesCategory(),
          HomeGarden(),
          KidsCategory(),
          BeautyCategory(),
        ],
      ),
    );
  }
}

class ItemData {
  String label;
  bool isSelected;
  ItemData({required this.label, this.isSelected = false});
}
