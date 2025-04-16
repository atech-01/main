import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  final bool? isColor;
  const BigCircle({super.key, required this.isRight, this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 20,
      child: DecoratedBox(
        decoration:
            isRight == true
                ? BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: isColor == null ? Colors.white : Colors.grey.shade200,
                )
                : BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
      ),
    );
  }
}
