import 'package:dashboard/resources/color_manager.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator(
      {super.key, required this.currentPage, required this.totalPages});
  final int currentPage;
  final int totalPages;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          totalPages,
          (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.only(right: 4),
                width: index == currentPage ? 32 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: index == currentPage
                      ? ColorManager.primary
                      : ColorManager.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
              )),
    );
  }
}
