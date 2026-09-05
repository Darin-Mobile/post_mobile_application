import 'package:flutter/material.dart';

class AppbarCustomWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Color? backgroundColor;
  final String? title;
  final List<Widget>? actions;

  const AppbarCustomWidget({
    super.key,
    this.title,
    this.backgroundColor,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: backgroundColor ?? Colors.cyan,
      title: Text(
        title ?? "",
        style: const TextStyle(color: Colors.white),
      ),
      actions: actions,
    );
  }
}