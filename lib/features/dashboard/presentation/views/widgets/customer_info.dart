import 'package:dashboard/features/dashboard/presentation/views/widgets/custom_text_field.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Customer name',
                  style: FontStyleManager.styleMedium16(context),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextField(
              hintText: 'Enter customer name',
            )
          ],
        )),
        SizedBox(
          width: 16,
        ),
        Expanded(
            child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Customer Email',
                  style: FontStyleManager.styleMedium16(context),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextField(
              hintText: 'Enter customer email',
            )
          ],
        )),
      ],
    );
  }
}
