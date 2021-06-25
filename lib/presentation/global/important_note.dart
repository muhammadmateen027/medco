import 'package:flutter/material.dart';

class ImportantNote extends StatelessWidget {
  final String? description;

  const ImportantNote(
      {Key? key,
      this.description = 'Ensure the image you upload is:'
          '\n- Clear and not blurry'
          '\n- Not edited or cropped in any way'
          '\n- Without any glare or reflections'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'Note: ',
          style: theme.textTheme.bodyText1!.copyWith(
            color: theme.primaryColor,
          ),
          children: <TextSpan>[
            TextSpan(
              text: description,
              style: theme.textTheme.bodyText1!.copyWith(
                color: theme.disabledColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
