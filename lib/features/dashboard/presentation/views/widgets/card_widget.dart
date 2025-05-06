import 'package:dashboard/models/card_model.dart';
import 'package:dashboard/resources/assets.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/font_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as provider;

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: provider.Svg(Assets.imagesMaskGroup),
            ),
            color: ColorManager.primary,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: ListTile(
                minVerticalPadding: 20,
                trailing: SvgPicture.asset(Assets.imagesGallery),
                subtitle: Text(
                  cardModel.name,
                  style: FontStyleManager.styleMedium20(context)
                      .copyWith(color: ColorManager.white),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Name card',
                    style: FontStyleManager.styleRegular16(context)
                        .copyWith(color: ColorManager.white),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(),
                  Text(
                    cardModel.number,
                    style: FontStyleManager.styleSemiBold24(context)
                        .copyWith(color: ColorManager.white),
                  ),
                  Text(
                    '${cardModel.date} - ${cardModel.cvv}',
                    style: FontStyleManager.styleRegular16(context)
                        .copyWith(color: ColorManager.white),
                  )
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
