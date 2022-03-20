import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String action;
  final Color bg;
  final Color fg;
  final VoidCallback? onTap;
  const ActionButton(
    this.action, {
    Key? key,
    this.bg = Colors.white,
    this.fg = Colors.black,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          action,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: fg,
              ),
        ),
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => fg,
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => bg,
        ),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => fg.withAlpha(50),
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
