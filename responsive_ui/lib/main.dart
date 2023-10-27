import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive/desktop_scaffold.dart';
import 'package:responsive_ui/responsive/mobile_scaffold.dart';
import 'package:responsive_ui/responsive/responsive_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(), desktopScaffold: DesktopScaffold()),
    );
  }
}
