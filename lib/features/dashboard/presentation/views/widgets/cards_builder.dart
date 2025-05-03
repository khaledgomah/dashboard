import 'package:dashboard/features/dashboard/presentation/views/widgets/card_widget.dart';
import 'package:dashboard/models/card_model.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CardsBuilder extends StatelessWidget {
  const CardsBuilder({super.key, required this.cards,required this.pageController});
  final List<CardModel> cards;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
        itemCount: cards.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CardWidget(cardModel: cards[index]),
            ));
  }
}
