import 'package:dashboard/features/dashboard/presentation/views/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/cards_and_income_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        CardsAndIncomeSection()
      ],
    );
  }
}
