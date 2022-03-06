import 'package:flutter/material.dart';
import 'package:qr_code_generator/src/items_header/components/item_button.dart';

class ItemsBuilder extends StatelessWidget {
  const ItemsBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.shop,
          size: 32.0,
        ),
        SizedBox(height: _size.height * 0.06),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(48.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                ItemButton(iconData: Icons.attachment),
                ItemButton(iconData: Icons.card_giftcard_outlined),
                ItemButton(iconData: Icons.text_fields_outlined),
                ItemButton(
                  iconData: Icons.email,
                  isActive: true,
                ),
                ItemButton(iconData: Icons.message),
                ItemButton(iconData: Icons.wifi),
                ItemButton(iconData: Icons.currency_bitcoin),
                ItemButton(iconData: Icons.image),
                ItemButton(iconData: Icons.more_horiz_outlined),
              ],
            ),
          ),
        )
      ],
    );
  }
}
