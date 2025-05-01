import 'package:dashboard/features/core/scroll_behavior.dart';
import 'package:dashboard/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => ResponsiveDashBoard(),
  ));
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        home: DashboardView());
  }
}
