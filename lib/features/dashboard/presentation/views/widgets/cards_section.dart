import 'package:dashboard/features/dashboard/presentation/views/widgets/cards_builder.dart';
import 'package:dashboard/models/card_model.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';

class CardsSection extends StatefulWidget {
  const CardsSection({super.key});

  @override
  State<CardsSection> createState() => _CardsSectionState();
}

class _CardsSectionState extends State<CardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  final List<CardModel> cards = const [
    CardModel(
        number: '0918 8124 0042 8129',
        cvv: 124,
        date: '12/20',
        name: 'Syah Bandi'),
    CardModel(
        number: '1234 5678 9012 3456',
        cvv: 456,
        date: '11/23',
        name: 'John Doe'),
    CardModel(
        number: '9876 5432 1098 7654',
        cvv: 789,
        date: '10/25',
        name: 'Jane Smith'),
    // Add more cards as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: FontStyleManager.styleSemiBold20,
          ),
          SizedBox(
            height: 20,
          ),
          CardsBuilder(
            pageController: pageController,
            cards: cards,
          ),
          SizedBox(
            height: 20,
          ),
          DotsIndicator(
            currentPage: currentPageIndex,
            totalPages: cards.length,
          )
        ],
      ),
    );
  }
}

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
