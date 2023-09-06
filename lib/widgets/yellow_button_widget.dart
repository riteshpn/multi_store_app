import 'package:flutter/material.dart';

class YelllowButton extends StatelessWidget {
   final String label;
   final Function() onPressed;
   final double width;

  const YelllowButton({
    Key? key, required this.label, required this.onPressed, required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
   


    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child:  Text(
         label
        ),
      ),
    );
  }
}
