import 'package:dashboard/features/core/adaptive_layout.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/desktop_drawer.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/desktop_layout.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: width < SizeConfig.desktopBreakpoint ? AppBar() : null,
      drawer: width < SizeConfig.desktopBreakpoint ? DesktopDrawer() : null,
      body: AdaptiveLayout(
        desktopLayout: (context) => DesktopLayout(),
        mobileLayout: (context) => Center(
          child: Text('Mobile Layout'),
        ),
        tabletLayout: (context) => Center(
          child: TabletLayout(),
        ),
      ),
    );
  }
}

class SizeConfig {
  // static double blockSizeHorizontal = 0;
  // static double blockSizeVertical = 0;
  // static double screenWidth = 0;
  // static double screenHeight = 0;
  // static double blockSize = 0;
  // static double blockSizeVertical2 = 0;
  // static double blockSizeHorizontal2 = 0;
  static double tabletBreakpoint = 800;
  static double desktopBreakpoint = 1300;
}
