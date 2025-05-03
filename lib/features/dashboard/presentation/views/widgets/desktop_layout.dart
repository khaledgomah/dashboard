import 'package:dashboard/features/dashboard/presentation/views/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/desktop_drawer.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/income_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 280, child: DesktopDrawer()),
        Expanded(flex: 604, child: AllExpensessAndQuickInvoiceSection()),
        Expanded(
            flex: 468,
            child:
                IncomeSection()) //TODO: Add the cards and income section here
      ],
    );
  }
}
