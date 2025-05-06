import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';

class TransactionSectionHeader extends StatelessWidget {
  const TransactionSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: FontStyleManager.styleSemiBold20(context),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: FontStyleManager.styleMedium16(context).copyWith(
              color: ColorManager.primary,
            ),
          ),
        )
      ],
    );
  }
}
