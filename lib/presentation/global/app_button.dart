import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({Key? key, this.onPressed, required this.label}) : super(key: key);
  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: const Key('loginForm_continue_raisedButton'),
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2,
            )
          ],
          color: Theme.of(context).primaryColor,
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.white,
                fontSize: 18,
              ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
