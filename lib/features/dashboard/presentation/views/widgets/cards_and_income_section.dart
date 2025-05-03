import 'package:dashboard/features/dashboard/presentation/views/widgets/cards_and_transaction_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/income_section.dart';
import 'package:flutter/material.dart';

class CardsAndIncomeSection extends StatelessWidget {
  const CardsAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardsAndTransactionSection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection()
      ],
    );
  }
}
