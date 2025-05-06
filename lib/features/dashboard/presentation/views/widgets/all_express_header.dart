import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';

class AllExpressHeader extends StatefulWidget {
  const AllExpressHeader({super.key});

  @override
  State<AllExpressHeader> createState() => _AllExpressHeaderState();
}

class _AllExpressHeaderState extends State<AllExpressHeader> {
  final List<String> options = ['Monthly', 'Weekly', 'Daily'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            child: Text('All Expenses',
                style: FontStyleManager.styleSemiBold20(context))),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ColorManager.border),
            borderRadius: BorderRadius.circular(16),
          ),
          child: DropdownButton(
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
                child: Text(options[0]),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text(options[1]),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text(options[2]),
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedIndex = value!;
              });
            },
          ),
        )
      ],
    );
  }
}
