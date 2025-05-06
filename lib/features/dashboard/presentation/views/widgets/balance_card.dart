// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dashboard/models/balance_item_model.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/font_style_manager.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    super.key,
    required this.balanceItemModel,
    required this.isSelected,
    required this.onTap,
  });
  final Function()? onTap;
  final BalanceItemModel balanceItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 216,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: !isSelected ? ColorManager.white : ColorManager.primary,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: !isSelected
                          ? ColorManager.lightGrey
                          : ColorManager.white.withAlpha(25),
                      radius: 30,
                      child: SvgPicture.asset(
                        balanceItemModel.iconPath,
                        colorFilter: ColorFilter.mode(
                          !isSelected
                              ? ColorManager.primary
                              : ColorManager.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 24,
                      color: !isSelected
                          ? ColorManager.secondary
                          : ColorManager.white,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      balanceItemModel.title,
                      style: FontStyleManager.styleSemiBold20(context).copyWith(
                          color: !isSelected
                              ? ColorManager.secondary
                              : ColorManager.white),
                    ),
                    Text(
                      balanceItemModel.date,
                      style: FontStyleManager.styleRegular14(context).copyWith(
                          color: !isSelected
                              ? ColorManager.grey
                              : ColorManager.lightGrey),
                    ),
                    Text(
                      balanceItemModel.amount,
                      style: FontStyleManager.styleSemiBold24(context).copyWith(
                          color: !isSelected
                              ? ColorManager.primary
                              : ColorManager.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
