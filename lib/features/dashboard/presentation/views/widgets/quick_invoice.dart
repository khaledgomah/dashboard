import 'package:dashboard/features/dashboard/presentation/views/widgets/add_transaction.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/latest_transaction.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/quick_invoice_header.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 20),
          LatestTransaction(),
          SizedBox(
            height: 24,
          ),
          Divider(
            color: ColorManager.border,
            thickness: 1,
          ),
          SizedBox(
            height: 24,
          ),
          AddTransaction()
        ],
      ),
    );
  }
}
