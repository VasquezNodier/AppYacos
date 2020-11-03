import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final double height;
  final double width;
  final Icon icon;

  final Function onClic;

  CircleButtonWidget(
      {this.height = 70,
      this.width = 70,
      @required this.icon,
      @required this.onClic});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClic();
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle,
            /* border: Border.all(
            width: 2
          ), */
            boxShadow: [
              BoxShadow(
                  color: Colors.black, blurRadius: 6.0, offset: Offset(0, 2.0))
            ]),
        height: height,
        width: width,
        child: icon,
      ),
    );
  }
}
