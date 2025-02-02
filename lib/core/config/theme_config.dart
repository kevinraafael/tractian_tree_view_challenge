import 'package:flutter/material.dart';

import '../themes/colors_theme.dart';

class ThemeConfig {
  ThemeConfig(this.context);
  final BuildContext context;

  ThemeData get lightTheme => ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsTheme.primaryColor,
        ),
        //scaffoldBackgroundColor: ColorsTheme.primaryBackground,

        /*fontFamily: TypographyTheme.primaryFont,
        disabledColor: ColorsTheme.disabled,
        dividerColor: ColorsTheme.border,
        primaryColor: ColorsTheme.primary,
        unselectedWidgetColor: ColorsTheme.disabled,
        buttonTheme: const ButtonThemeData(
          buttonColor: ColorsTheme.primary,
        ),
        brightness: Brightness.light,
        splashColor: ColorsTheme.primaryBackground,
        snackBarTheme: const SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
        ),
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStateProperty.all(ColorsTheme.primaryBackground),
          fillColor: WidgetStateProperty.all(ColorsTheme.primaryBackground),
          side: const BorderSide(
            color: ColorsTheme.primary,
            width: 2,
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashRadius: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        primaryTextTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: ColorsTheme.primaryText,
          ),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.all(ColorsTheme.primaryBackground),
          trackColor: WidgetStateProperty.all(ColorsTheme.secondary),
        ),
        expansionTileTheme: const ExpansionTileThemeData(
          backgroundColor: ColorsTheme.primaryBackground,
          collapsedBackgroundColor: ColorsTheme.primaryBackground,
          iconColor: ColorsTheme.primaryText,
          collapsedIconColor: ColorsTheme.primaryText,
          textColor: ColorsTheme.primaryText,
          childrenPadding: EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: 20,
          ),
          tilePadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          surfaceContainer: ColorsTheme.primaryBackground,
          error: ColorsTheme.error,
          primary: ColorsTheme.primaryIcon,
          secondary: ColorsTheme.primaryBackground,
          surface: ColorsTheme.primaryBackground,
          onSurfaceVariant: ColorsTheme.primaryBackground,
          onError: ColorsTheme.error,
          onPrimary: ColorsTheme.primaryBackground,
          onSecondary: ColorsTheme.primaryBackground,
          onSurface: ColorsTheme.primaryText,
        ),
        dialogBackgroundColor: ColorsTheme.primaryBackground,
        dialogTheme: const DialogTheme(
          backgroundColor: ColorsTheme.primaryBackground,
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: ColorsTheme.primary,
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: ColorsTheme.primary,
          unselectedLabelColor: ColorsTheme.primaryText,
          dividerColor: Colors.transparent,
        ),
        datePickerTheme: const DatePickerThemeData(
          backgroundColor: ColorsTheme.homeBackground,
          headerForegroundColor: ColorsTheme.primaryText,
          rangePickerHeaderForegroundColor: ColorsTheme.primaryBackground,
          rangePickerHeaderBackgroundColor: ColorsTheme.primary,
          rangeSelectionBackgroundColor: ColorsTheme.primaryIcon,
          dayStyle: TextStyle(
            color: ColorsTheme.primaryBackground,
          ),
        ), */
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
      );
}

extension CustomColors on ColorScheme {
  Color get primaryText =>
      brightness == Brightness.light ? ColorsTheme.primaryText : Colors.grey;
  Color get principal =>
      brightness == Brightness.light ? ColorsTheme.primaryColor : Colors.grey;
}
