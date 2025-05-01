import 'package:dashboard/features/dashboard/presentation/views/widgets/all_expenses.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice()
        ],
      ),
    );
  }
}
