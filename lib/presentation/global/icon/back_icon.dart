import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackIcon extends StatelessWidget {
  BackIcon({this.iconColor});
  final Color? iconColor;
  final String svgString = '''
  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg width="12" height="22" viewBox="0 0 12 22" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10 20L2 11.1253L10 2" stroke="black" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
</svg>

  ''';
  @override
  Widget build(BuildContext context) {
    Color iconColorFinal = Theme.of(context).indicatorColor;
    if (iconColor != null) {
      iconColorFinal = iconColor!;
    }
    // String string = svgString.replaceAll('#000000', '#' + colorString(iconColorFinal));
    return SvgPicture.string(
      svgString,
      color: iconColorFinal,
    );
  }
}
