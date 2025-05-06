import 'package:dashboard/features/dashboard/presentation/views/widgets/income_header.dart';
import 'package:dashboard/models/income_item.dart';
import 'package:dashboard/models/size_config.dart';
import 'package:dashboard/resources/build_context_extention.dart';
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
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.only(
          top: context.screenWidth > SizeConfig.desktopBreakpoint ? 40 : 12,
          left: context.screenWidth > SizeConfig.desktopBreakpoint ? 24 : 12,
          right: context.screenWidth > SizeConfig.desktopBreakpoint ? 32 : 12),
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
              SizedBox(
                width: 30,
              ),
              Expanded(
                flex: 120,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    duration: Durations.short2,
                    PieChartData(
                      pieTouchData: PieTouchData(
                        enabled: true,
                        touchCallback: (event, response) => setState(() {
                          touchedIndex =
                              response?.touchedSection?.touchedSectionIndex ??
                                  -1;
                          (response?.touchedSection?.touchRadius ?? 0) > 55
                              ? touchedIndex = -1
                              : touchedIndex = touchedIndex;
                        }),
                      ),
                      borderData: FlBorderData(show: false),
                      sectionsSpace: 0,
                      centerSpaceRadius: 40,
                      sections: widget._list
                          .asMap()
                          .map((index, item) => MapEntry(
                                index,
                                PieChartSectionData(
                                  color: item.color,
                                  value: item.amount.toDouble(),
                                  showTitle: false,
                                  radius: index == touchedIndex ? 30 : 25,
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
                flex: 300,
                child: Column(
                  children: widget._list
                      .asMap()
                      .map((index, item) => MapEntry(
                            index,
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                backgroundColor: item.color,
                                radius: 6,
                              ),
                              title: FittedBox(
                                  alignment: Alignment.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Text(item.title)),
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
