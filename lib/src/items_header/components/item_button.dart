import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/constant/constant_colors.dart';

class ItemButton extends StatelessWidget {
  final bool isActive;
  final IconData iconData;
  const ItemButton({
    Key? key,
    this.isActive = false,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: CircleAvatar(
        backgroundColor:
            isActive ? ConstantColors.primaryIndigo : Colors.transparent,
        radius: 22.0,
        child: Icon(
          iconData,
          size: 20.0,
          color: isActive ? Colors.white : ConstantColors.primaryIndigo,
        ),
      ),
    );
  }
}
