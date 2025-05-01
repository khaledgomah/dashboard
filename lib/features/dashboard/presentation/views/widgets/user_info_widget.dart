import 'package:dashboard/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/font_style_manager.dart';

class UserInfoWidget extends StatelessWidget {
  final UserModel user;
  const UserInfoWidget({
    super.key,
    required this.user,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorManager.lightGrey,
      ),
      child: Row(
        children: [
          SvgPicture.asset(user.profilePictureUrl, width: 50, height: 50),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name, style: FontStyleManager.styleSemiBold16),
              const SizedBox(height: 5),
              Text(
                user.email,
                style: FontStyleManager.styleRegular12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
