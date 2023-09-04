import 'package:flutter/material.dart';
import 'package:multi_store_app/category/men_category.dart';
import 'package:multi_store_app/utilities/categ_list.dart';
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
        title: FakeScreen(),
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
          Center(child: Text('women categories')),
          Center(child: Text('shoes categories')),
          Center(child: Text('bags categories')),
          Center(child: Text('electronics categories')),
          Center(child: Text('accessories categories')),
          Center(child: Text('home & garden categories')),
          Center(child: Text('kids categories')),
          Center(child: Text('beauty categories')),
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
