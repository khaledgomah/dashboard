import 'package:dashboard/features/dashboard/presentation/views/widgets/menu_item.dart';
import 'package:dashboard/models/item_model.dart';
import 'package:dashboard/resources/assets.dart';
import 'package:flutter/material.dart';

class FooterMenuWidget extends StatelessWidget {
  const FooterMenuWidget({super.key});
  final List<ItemModel> items = const [
    ItemModel(title: "Settings System", iconPath: Assets.imagesSetting2),
    ItemModel(title: "Logout Acount", iconPath: Assets.imagesLogout),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuItem(item: items[0]),
        const SizedBox(
          height: 20,
        ),
        MenuItem(item: items[1]),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
