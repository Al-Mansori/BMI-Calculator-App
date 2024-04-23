import 'package:flutter/material.dart';
import 'package:hold_down_button/hold_down_button.dart';

class RoundIconButton extends StatelessWidget {
  final dynamic Function()? onPress;
  final IconData? iconName;

  const RoundIconButton({super.key, this.onPress, this.iconName});
  @override
  Widget build(BuildContext context) {
    return HoldDownButton(
      onHoldDown: () {
        onPress!();
      },
      child: RawMaterialButton(
        elevation: 6,
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        onPressed: onPress,
        shape: const CircleBorder(),
        // RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        fillColor: const Color(0xff4c4f5e),
        child: Icon(
          iconName,
        ),
      ),
    );
  }
}
