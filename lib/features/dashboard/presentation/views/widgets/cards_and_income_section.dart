import 'package:dashboard/features/dashboard/presentation/views/widgets/cards_and_transaction_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/income_section.dart';
import 'package:dashboard/models/size_config.dart';
import 'package:dashboard/resources/build_context_extention.dart';
import 'package:flutter/material.dart';

class CardsAndIncomeSection extends StatelessWidget {
  const CardsAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardsAndTransactionSection(),
        SizedBox(
          height:
              context.screenWidth > SizeConfig.desktopBreakpoint ? 24 : null,
        ),
        IncomeSection(),
        SizedBox(
          height:
              context.screenWidth > SizeConfig.desktopBreakpoint ? 24 : null,
        ),
      ],
    );
  }
}
