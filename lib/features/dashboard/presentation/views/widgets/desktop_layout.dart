import 'package:dashboard/features/dashboard/presentation/views/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/cards_and_income_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/desktop_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 280, child: DesktopDrawer()),
        Expanded(
          flex: 604 + 468,
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
        )
      ],
    );
  }
}
