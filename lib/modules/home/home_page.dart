import 'package:flutter/material.dart';
import 'package:tractian_tree_view_challenge/core/shared/widgets/app_bar_widget.dart';
import 'package:tractian_tree_view_challenge/core/themes/icons_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        centerIcon: IconsTheme.logo,
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
