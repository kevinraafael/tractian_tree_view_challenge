import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tractian_tree_view_challenge/app_module.dart';
import 'package:tractian_tree_view_challenge/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('pt', 'BR')],
      path: 'assets/translations',
      fallbackLocale: const Locale('pt', 'BR'),
      child: ModularApp(
        module: AppModule(),
        child: AppWidget(),
      ),
    ),
  );
}
