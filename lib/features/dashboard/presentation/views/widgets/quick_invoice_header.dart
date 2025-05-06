import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: FontStyleManager.styleSemiBold20(context),
        ),
        IconButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all<Color>(ColorManager.lightGrey),
            shape: WidgetStateProperty.all(CircleBorder()),
            fixedSize: WidgetStatePropertyAll(Size(48, 48)),
          ),
          icon: Icon(
            Icons.add,
            color: ColorManager.primary,
          ),
          onPressed: () {
            // Add your action here
          },
        ),
      ],
    );
  }
}
