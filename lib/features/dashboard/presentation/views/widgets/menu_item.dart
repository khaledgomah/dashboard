import 'package:dashboard/models/item_model.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  final ItemModel item;
  const MenuItem({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.iconPath),
      title: Text(
        item.title,
        style: FontStyleManager.styleRegular16(context),
      ),
      onTap: () {},
    );
  }
}
