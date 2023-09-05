import 'package:flutter/material.dart';
import 'package:multi_store_app/utilities/categ_list.dart';
import 'package:multi_store_app/widgets/categ_widget.dart';

// List<String> imagetry =[
// 'images/try/image0.jpg',
// 'images/try/image1.jpg',
// 'images/try/image2.jpg',
// 'images/try/image3.jpg',
//
// ];

// List<String> labeltry = ['shirt', 'jeans', 'shoes', 'jackets'];

class MencategoryScreen extends StatefulWidget {
  const MencategoryScreen({Key? key}) : super(key: key);

  @override
  State<MencategoryScreen> createState() => _MencategoryScreenState();
}

class _MencategoryScreenState extends State<MencategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryHeaderLabel(
                    headerLabel: 'Men',
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.68,
                      child: GridView.count(
                        mainAxisSpacing: 65,
                        crossAxisSpacing: 15,
                        crossAxisCount: 3,
                        children: List.generate(men.length, (index) {
                          return SubcategModel(
                            mainCategName: 'men',
                            subCategName: men[index],
                            assetName: 'images/men/men$index.jpg',
                            subcategLabel: men[index],
                          );
                        }),
                      ))
                ],
              ),
            ),
          ),
          const Positioned(
              bottom: 0,
              right: 0,
              child: SliderBar(
                maincategName: 'men',
              ))
        ],
      ),
    );
  }
}

// class SliderBar extends StatelessWidget {
  // final String maincategName;
  // const SliderBar({
    // Key? key, required this.maincategName,
  // }) : super(key: key);
// 
  // @override
  // Widget build(BuildContext context) {
    // return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.8,
      // width: MediaQuery.of(context).size.width * 0.05,
      // child: Padding(
        // padding: EdgeInsets.symmetric(vertical: 40),
        // child: Container(
          // decoration: BoxDecoration(
              // color: Colors.brown.withOpacity(0.2),
              // borderRadius: BorderRadius.circular(50)),
          // child: RotatedBox(
            // quarterTurns: 3,
            // child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // children: [
                // const Text(
                  // "<<",
                  // style: TextStyle(
                    // color: Colors.brown,
                    // fontSize: 16,
                    // fontWeight: FontWeight.w600,
                    // letterSpacing: 10,
                  // ),
                // ),
                // Text(
                  // maincategName.toUpperCase(),
                  // style: const TextStyle(
                    // color: Colors.brown,
                    // fontSize: 16,
                    // fontWeight: FontWeight.w600,
                    // letterSpacing: 10,
                  // ),
                // ),
                // const Text(
                  // ">>",
                  // style: TextStyle(
                    // color: Colors.brown,
                    // fontSize: 16,
                    // fontWeight: FontWeight.w600,
                    // letterSpacing: 10,
                  // ),
                // )
              // ],
            // ),
          // ),
        // ),
      // ),
    // );
  // }
// }
// 
// class SubcategModel extends StatelessWidget {
  // final String mainCategName;
  // final String subCategName;
  // final String assetName;
  // final String subcategLabel;
  // const SubcategModel({
    // Key? key,
    // required this.mainCategName,
    // required this.subCategName,
    // required this.assetName,
    // required this.subcategLabel,
  // }) : super(key: key);
// 
  // @override
  // Widget build(BuildContext context) {
    // return GestureDetector(
      // onTap: () {
        // Navigator.of(context).push(
          // MaterialPageRoute(
            // builder: (context) => SubCategoryProduct(
              // subcateName: subCategName,
              // maincategName: mainCategName,
            // ),
          // ),
        // );
      // },
      // child: Column(
        // children: [
          // SizedBox(
            // height: 60,
            // width: 60,
            // child: Image(image: AssetImage(assetName)),
          // ),
          // Text(subcategLabel)
        // ],
      // ),
    // );
  // }
// }
// 
// class CategoryHeaderLabel extends StatelessWidget {
  // final String headerLabel;
  // const CategoryHeaderLabel({
    // Key? key,
    // required this.headerLabel,
  // }) : super(key: key);
// 
  // @override
  // Widget build(BuildContext context) {
    // return Padding(
      // padding: const EdgeInsets.all(30),
      // child: Text(
        // headerLabel,
        // style: const TextStyle(
          // fontSize: 24,
          // fontWeight: FontWeight.bold,
          // letterSpacing: 1.5,
        // ),
      // ),
    // );
  // }
// }
// 