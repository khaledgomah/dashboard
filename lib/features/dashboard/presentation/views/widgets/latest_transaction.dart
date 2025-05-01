import 'package:dashboard/features/dashboard/presentation/views/widgets/user_info_widget.dart';
import 'package:dashboard/models/user_model.dart';
import 'package:dashboard/resources/assets.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});
  final List<UserModel> users = const [
    UserModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        profilePictureUrl: Assets.imagesFrame),
    UserModel(
        name: 'Josua Nunito',
        email: 'Nunitoj20@gmail',
        profilePictureUrl: Assets.imagesUser),
    UserModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        profilePictureUrl: Assets.imagesFrame),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(children: [
          Text('Latest Transaction', style: FontStyleManager.styleMedium16)
        ]),
        SizedBox(height: 12),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: users
                  .map((user) => Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: UserInfoWidget(
                          user: user,
                        ),
                      ))
                  .toList(),
            )),
      ],
    );
  }
}
