import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tractian_tree_view_challenge/core/config/theme_config.dart';

import 'app_Icon_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String leadingIcon;
  final String centerIcon;
  final String trailingIcon;
  final VoidCallback? leadingOnTap;
  final VoidCallback? trailingOnTap;
  final double? iconSize;

  const AppBarWidget({
    super.key,
    this.iconSize,
    this.leadingOnTap,
    this.trailingOnTap,
    this.title = '',
    this.leadingIcon = '',
    this.trailingIcon = '',
    this.centerIcon = '',
  });

  void onLeadingTap() {
    if (leadingOnTap == null) {
      Modular.to.pop();
      return;
    }
    leadingOnTap!();
  }

  void onTrailingTap() {
    if (trailingOnTap == null) {
      Modular.to.pop();
      return;
    }
    trailingOnTap!();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.principal,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: leadingIcon != '',
              replacement: const SizedBox(width: 25),
              child: InkWell(
                onTap: onLeadingTap,
                child: getAppIconWidgetForAppBar(
                  context,
                  leadingIcon,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Visibility(
                  replacement: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).tr(),
                  visible: centerIcon != '',
                  child: getAppIconWidgetForAppBar(
                    context,
                    centerIcon,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: trailingIcon != '',
              replacement: const SizedBox(width: 25),
              child: InkWell(
                onTap: onTrailingTap,
                child: getAppIconWidgetForAppBar(
                  context,
                  trailingIcon,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }

  Widget getAppIconWidgetForAppBar(context, icon) => AppIconWidget(
        icon,
        color: Theme.of(context).colorScheme.primaryText,
        fit: BoxFit.contain,
        height: iconSize ?? 25,
        width: iconSize ?? 25,
      );
}
