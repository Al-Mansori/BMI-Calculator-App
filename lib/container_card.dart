import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final Color cardColor;
  final Widget? cardChild;
  final Function()? onPress;
  const ContainerCard(
      {super.key, required this.cardColor, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: cardChild,
      ),
    );
  }
}
