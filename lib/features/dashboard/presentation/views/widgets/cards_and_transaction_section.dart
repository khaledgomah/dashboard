import 'package:dashboard/features/dashboard/presentation/views/widgets/cards_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/transaction_section.dart';
import 'package:dashboard/models/size_config.dart';
import 'package:dashboard/resources/build_context_extention.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:flutter/material.dart';

class CardsAndTransactionSection extends StatelessWidget {
  const CardsAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
           top: context.screenWidth > SizeConfig.desktopBreakpoint ? 40 : 0,
          left: 24,
          right: 32),
      decoration: BoxDecoration(
          color: ColorManager.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          CardsSection(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child:
                Divider(color: ColorManager.border, thickness: 1, height: 40),
          ),
          TransactionSection()
        ],
      ),
    );
  }
}
