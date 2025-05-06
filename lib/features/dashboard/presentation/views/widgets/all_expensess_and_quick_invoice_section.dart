import 'package:dashboard/features/dashboard/presentation/views/widgets/all_expenses.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/quick_invoice.dart';
import 'package:dashboard/models/size_config.dart';
import 'package:dashboard/resources/build_context_extention.dart';
import 'package:flutter/material.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: context.screenWidth > SizeConfig.desktopBreakpoint ? 40 : 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
