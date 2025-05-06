import 'package:dashboard/features/dashboard/presentation/views/widgets/all_express_header.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/balance_details.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  GlobalKey key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          key: key,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              AllExpressHeader(),
              SizedBox(
                height: 14,
              ),
              BalanceDetails()
            ],
          ),
        ),
      ],
    );
  }
}
