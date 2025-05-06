import 'package:dashboard/features/dashboard/presentation/views/widgets/menu_item.dart';
import 'package:dashboard/models/item_model.dart';
import 'package:dashboard/resources/assets.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  int _selectedIndex = 0;
  final List<ItemModel> items = [
    ItemModel(title: "Dashboard", iconPath: Assets.imagesGraph),
    ItemModel(title: "My Transaction", iconPath: Assets.imagesWallet2),
    ItemModel(title: "Statistics", iconPath: Assets.imagesGraph),
    ItemModel(title: "Wallet Account", iconPath: Assets.imagesWallet2),
    ItemModel(title: "My Investments", iconPath: Assets.imagesChart2),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 20,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _selectedIndex = index;
            setState(() {});
          },
          child:_selectedIndex==index?SelectedMenuItem(item: items[index],) :MenuItem(
            item: items[index],
          ),
        );
      },
    );
  }
}
