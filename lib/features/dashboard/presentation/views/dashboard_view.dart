import 'package:dashboard/features/core/adaptive_layout.dart';
import 'package:dashboard/features/dashboard/presentation/views/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        desktopLayout: (context) => DesktopLayout(),
        mobileLayout: (context) => Center(
          child: Text('Mobile Layout'),
        ),
        tabletLayout: (context) => Center(
          child: Text('Tablet Layout'),
        ),
      ),
    );
  }
}
