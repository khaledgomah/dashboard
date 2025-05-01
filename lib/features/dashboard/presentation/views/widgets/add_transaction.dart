import 'package:dashboard/features/dashboard/presentation/views/widgets/custom_button.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/custom_text_field.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/customer_info.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final List<String> options = const ['USD', 'EGP', r'$'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomerInfo(),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Item name',
                      style: FontStyleManager.styleMedium16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  hintText: 'Type customer name',
                )
              ],
            )),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'item mount',
                      style: FontStyleManager.styleMedium16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorManager.lightGrey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: DropdownButton(
                    style: FontStyleManager.styleRegular16
                        .copyWith(color: ColorManager.grey),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    underline: const SizedBox(),
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: const Icon(
                        Icons.arrow_drop_down,
                        size: 24,
                      ),
                    ),
                    value: selectedIndex,
                    items: [
                      DropdownMenuItem(
                        value: 0,
                        child: Text(
                          options[0],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 1,
                        child: Text(
                          options[1],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text(
                          options[2],
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedIndex = value!;
                      });
                    },
                  ),
                ),
              ],
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              onPressed: () {},
              child: 'Add more details',
              backgroundColor: ColorManager.white,
              textColor: ColorManager.primary,
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              onPressed: () {},
              child: 'Send Money',
            ))
          ],
        )
      ],
    );
  }
}
