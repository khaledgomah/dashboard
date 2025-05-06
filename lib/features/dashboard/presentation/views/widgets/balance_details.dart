import 'package:dashboard/features/dashboard/presentation/views/widgets/balance_card.dart';
import 'package:dashboard/models/balance_item_model.dart';
import 'package:dashboard/resources/assets.dart';
import 'package:flutter/material.dart';

class BalanceDetails extends StatefulWidget {
  const BalanceDetails({super.key});

  @override
  State<BalanceDetails> createState() => _BalanceDetailsState();
}

class _BalanceDetailsState extends State<BalanceDetails> {
  int _selectedIndex = 0;
  List<BalanceItemModel> balanceItems = [
    BalanceItemModel(
      date: 'April 2022',
      title: 'Balance',
      amount: r'$20,129',
      iconPath: Assets.imagesMoneys,
    ),
    BalanceItemModel(
      date: 'April 2022',
      title: 'Income',
      amount: r'$20,129',
      iconPath: Assets.imagesCardReceive,
    ),
    BalanceItemModel(
      date: 'April 2022',
      title: 'Expenses',
      amount: r'$20,129',
      iconPath: Assets.imagesCardSend,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: balanceItems.asMap().entries.map((entry) {
        int index = entry.key;
        BalanceItemModel balanceItemModel = entry.value;
        return Expanded(
          child: BalanceCard(
            balanceItemModel: balanceItemModel,
            isSelected: _selectedIndex == index,
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
