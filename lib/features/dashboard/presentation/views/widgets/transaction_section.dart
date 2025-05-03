import 'package:dashboard/features/dashboard/presentation/views/widgets/transaction_section_header.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/transuction_card.dart';
import 'package:dashboard/models/transaction_details.dart';
import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});
  static const List<TransactionDetails> transactions = [
    TransactionDetails(
        title: 'Payment to John Doe',
        date: '2023-10-01',
        amount: '\$100.00',
        status: TransactionType.withdrawal),
    TransactionDetails(
        title: 'Deposit from Jane Smith',
        date: '2023-10-02',
        amount: '\$200.00',
        status: TransactionType.deposit),
    TransactionDetails(
        title: 'Payment to Acme Corp.',
        date: '2023-10-03',
        amount: '\$150.00',
        status: TransactionType.withdrawal),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          TransactionSectionHeader(),
          SizedBox(
            height: 20,
          ),
          Column(
            children: transactions
                .map((e) => TransuctionCard(transactionDetails: e))
                .toList(),
          )
        ],
      ),
    );
  }
}
