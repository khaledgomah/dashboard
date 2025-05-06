import 'package:dashboard/features/core/adaptive_layout.dart';
import 'package:dashboard/features/dashboard/presentation/views/mobile_layout.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/desktop_drawer.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/desktop_layout.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/tablet_layout.dart';
import 'package:dashboard/models/size_config.dart';
import 'package:dashboard/resources/build_context_extention.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = context.screenWidth;
    return Scaffold(
      backgroundColor: ColorManager.lightGrey,
      appBar: width < SizeConfig.desktopBreakpoint
          ? AppBar(
              scrolledUnderElevation: 0,
              elevation: 0,
              backgroundColor: ColorManager.lightGrey,
            )
          : null,
      drawer: width < SizeConfig.desktopBreakpoint ? DesktopDrawer() : null,
      body: AdaptiveLayout(
        desktopLayout: (context) => DesktopLayout(),
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
      ),
    );
  }
}
