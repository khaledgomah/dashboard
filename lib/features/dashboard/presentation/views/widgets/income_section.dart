import 'package:dashboard/features/dashboard/presentation/views/widgets/income_header.dart';
import 'package:dashboard/models/income_item.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatefulWidget {
  const IncomeSection({super.key});

  final List<IncomeItem> _list = const [
    IncomeItem(
      title: 'Design service',
      amount: 40,
      color: ColorManager.darkPrimary,
    ),
    IncomeItem(
      title: 'Design product',
      amount: 25,
      color: ColorManager.primary,
    ),
    IncomeItem(
      title: 'Product royalti',
      amount: 20,
      color: ColorManager.secondary,
    ),
    IncomeItem(
      title: 'Other',
      amount: 22,
      color: ColorManager.grey,
    ),
  ];

  @override
  State<IncomeSection> createState() => _IncomeSectionState();
}

class _IncomeSectionState extends State<IncomeSection> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 24, right: 32),
      decoration: BoxDecoration(
          color: ColorManager.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                flex: 120,
                child: AspectRatio(
                  
                  aspectRatio: 1,
                  child: PieChart(
                    
                    PieChartData(
                      pieTouchData: PieTouchData(touchCallback: touchCallback),
                      borderData: FlBorderData(show: false),
                      sectionsSpace: 0,
                      centerSpaceRadius: 50,
                      sections: widget._list
                          .asMap()
                          .map((index, item) => MapEntry(
                                index,
                                PieChartSectionData(
                                  color: item.color,
                                  value: item.amount.toDouble(),
                                  showTitle: false,
                                  radius: index == touchedIndex ? 40 : 35,
                                ),
                              ))
                          .values
                          .toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                flex: 268,
                child: Column(
                  children: widget._list
                      .asMap()
                      .map((index, item) => MapEntry(
                            index,
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: item.color,
                                radius: 6,
                              ),
                              title: Text(item.title),
                              trailing: Text(
                                '${item.amount}%',
                                style: TextStyle(
                                  color: ColorManager.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ))
                      .values
                      .toList(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void touchCallback(event, response) {
    setState(() {
      if (response == null || response.touchedSection == null) {
        touchedIndex = -1;
        return;
      }
      touchedIndex = response.touchedSection!.touchedSectionIndex;
    });
  }
}
