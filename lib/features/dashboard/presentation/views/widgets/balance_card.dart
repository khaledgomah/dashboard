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
                CardHeader(
                    isSelected: isSelected, balanceItemModel: balanceItemModel),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        balanceItemModel.title,
                        style: FontStyleManager.styleSemiBold20(context)
                            .copyWith(
                                color: !isSelected
                                    ? ColorManager.secondary
                                    : ColorManager.white),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        balanceItemModel.date,
                        style: FontStyleManager.styleRegular14(context)
                            .copyWith(
                                color: !isSelected
                                    ? ColorManager.grey
                                    : ColorManager.lightGrey),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        balanceItemModel.amount,
                        style: FontStyleManager.styleSemiBold24(context)
                            .copyWith(
                                color: !isSelected
                                    ? ColorManager.primary
                                    : ColorManager.white),
                      ),
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

class CardHeader extends StatelessWidget {
  const CardHeader({
    super.key,
    required this.isSelected,
    required this.balanceItemModel,
  });

  final bool isSelected;
  final BalanceItemModel balanceItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: !isSelected
                ? ColorManager.lightGrey
                : ColorManager.white.withAlpha(25),
            child: Center(
              child: SvgPicture.asset(
                balanceItemModel.iconPath,
                colorFilter: ColorFilter.mode(
                  !isSelected ? ColorManager.primary : ColorManager.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 24,
            color: !isSelected ? ColorManager.secondary : ColorManager.white,
          ),
        ),
      ],
    );
  }
}
