import 'package:dashboard/models/transaction_details.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';

class TransuctionCard extends StatelessWidget {
  const TransuctionCard({super.key, required this.transactionDetails});
  final TransactionDetails transactionDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: ColorManager.lightGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(transactionDetails.title),
        subtitle: Text(transactionDetails.date),
        trailing: Text(
          transactionDetails.amount,
          style: FontStyleManager.styleSemiBold16.copyWith(
              color: transactionDetails.status == TransactionType.withdrawal
                  ? ColorManager.error
                  : ColorManager.primary),
        ),
      ),
    );
  }
}
