import 'package:flutter/material.dart';

class StepperButton extends StatelessWidget {
  final VoidCallback? onStepContinue;
  final VoidCallback? onStepCancel;
  final String? continueButtonText;
  final String? cancelButtonText;

  const StepperButton({
    Key? key,
    this.onStepContinue,
    this.onStepCancel,
    this.continueButtonText = 'Next',
    this.cancelButtonText = 'Cancel',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Column(
      children: [
        SizedBox(height: 16),
        Row(
          children: [
            InkWell(
              onTap: onStepContinue,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(
                  continueButtonText!,
                  style: theme.textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            InkWell(
              onTap: onStepCancel,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: theme.disabledColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(
                  cancelButtonText!,
                  style: theme.textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
