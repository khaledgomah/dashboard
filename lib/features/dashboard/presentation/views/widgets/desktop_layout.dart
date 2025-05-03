import 'package:dashboard/features/dashboard/presentation/views/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/cards_section.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/desktop_drawer.dart';
import 'package:dashboard/resources/color_manager.dart';
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
            child: Container(
              margin: EdgeInsets.only(top: 40, left: 24, right: 32),
              decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(12)),
              child: CardsSection(),
            ))
      ],
    );
  }
}
