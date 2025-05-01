import 'package:dashboard/features/dashboard/presentation/views/widgets/footer_menu_widget.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/menu_widget.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/user_info_widget.dart';
import 'package:dashboard/models/item_model.dart';
import 'package:dashboard/models/user_model.dart';
import 'package:dashboard/resources/assets.dart';
import 'package:flutter/material.dart';

class DesktopDrawer extends StatelessWidget {
  const DesktopDrawer({
    super.key,
  });
  final List<ItemModel> items = const [
    ItemModel(title: "Settings System", iconPath: Assets.imagesSetting2),
    ItemModel(title: "Logout Acount", iconPath: Assets.imagesLogout),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoWidget(
              user: UserModel(
                  name: 'Lekan Okeowo',
                  email: 'demo@gmail.com',
                  profilePictureUrl: Assets.imagesUser),
            ),
          ),
          MenuWidget(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                FooterMenuWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
