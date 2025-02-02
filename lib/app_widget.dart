import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/config/theme_config.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Card FDV',
      theme: ThemeConfig(context).lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: Modular.routerConfig,
    );
  }
}
