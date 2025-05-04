import 'package:dashboard/features/dashboard/presentation/views/widgets/all_expenses.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
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
