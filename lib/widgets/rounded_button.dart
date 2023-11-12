import 'package:flutter/material.dart';

import '../../shared/themes/app_theme.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool isEnabled;
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.isEnabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        decoration: AppTheme.primaryColoredRoundedButtonDecoration()
            .copyWith(color: !isEnabled ? AppTheme.hintGrey : null),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Text(
          text,
          style: AppTheme.buttonTitle(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
