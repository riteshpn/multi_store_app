import 'package:flutter/material.dart';
import 'package:multi_store_app/minor_screen/subcate_screen.dart';

class SubcategModel extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  final String assetName;
  final String subcategLabel;
  const SubcategModel({
    Key? key,
    required this.mainCategName,
    required this.subCategName,
    required this.assetName,
    required this.subcategLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SubCategoryProduct(
              subcateName: subCategName,
              maincategName: mainCategName,
            ),
          ),
        );
      },
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Image(image: AssetImage(assetName)),
          ),
          Text(
            subcategLabel,
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}

class CategoryHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const CategoryHeaderLabel({
    Key? key,
    required this.headerLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Text(
        headerLabel,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}

class SliderBar extends StatelessWidget {
  final String maincategName;
  const SliderBar({
    Key? key,
    required this.maincategName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50)),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                maincategName == 'beauty'
                    ? const Text('')
                    : const Text(
                        "<<",
                        style: style,
                      ),
                Text(
                  maincategName.toUpperCase(),
                  style: style,
                ),
                maincategName == 'men'
                    ? const Text('')
                    : const Text(
                        ">>",
                        style: style,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(
    color: Colors.brown,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 10);
