import 'package:dashboard/models/item_model.dart';
import 'package:dashboard/resources/color_manager.dart';
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
    );
  }
}

class SelectedMenuItem extends StatelessWidget {
  final ItemModel item;
  const SelectedMenuItem({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 16),
      //tileColor: ColorManager.white,
      trailing: Container(
        width: 4,
        color: ColorManager.primary,
      ),
      leading: SvgPicture.asset(item.iconPath),
      title: Text(
        item.title,
        style: FontStyleManager.styleBold16(context).copyWith(
          color: ColorManager.primary,
        ),
      ),
    );
  }
}
