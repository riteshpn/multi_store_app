import 'package:flutter/material.dart';
import 'package:multi_store_app/utilities/categ_list.dart';
import 'package:multi_store_app/widgets/categ_widget.dart';

class ElectronicsCategory extends StatelessWidget {
  const ElectronicsCategory({Key? key}) : super(key: key);

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
                    headerLabel: 'Electrioncs',
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.68,
                      child: GridView.count(
                        mainAxisSpacing: 65,
                        crossAxisSpacing: 15,
                        crossAxisCount: 3,
                        children: List.generate(electronics.length, (index) {
                          return SubcategModel(
                            mainCategName: 'electronics',
                            subCategName: electronics[index],
                            assetName: 'images/electronics/electronics$index.jpg',
                            subcategLabel: electronics[index],
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
                maincategName: 'electronics',
              ))
        ],
      ),
    );
  }
}
