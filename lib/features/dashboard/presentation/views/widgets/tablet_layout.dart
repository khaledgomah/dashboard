import 'package:dashboard/features/dashboard/presentation/views/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/cards_and_income_section.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 604, child: AllExpensessAndQuickInvoiceSection()),
                Expanded(flex: 468, child: CardsAndIncomeSection()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
