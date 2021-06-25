import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GradeIcon extends StatelessWidget {
  GradeIcon({this.iconColor});
  final Color? iconColor;
  final String svgString = '''
  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg viewBox="0 0 50 50" fill="none" version="1.1" id="svg845"><path
     d="m 24.999989,6.410427 -19.5792384,8.919345 1.5569296,3.422342 18.0223088,-8.210655 18.022233,8.210655 1.557079,-3.422342 z m 0,8.552147 -0.800538,0.378215 -19.593902,9.220463 7.233898,3.40388 v 9.036967 l 13.160542,6.58027 13.16054,-6.58027 v -9.036967 l 7.233974,-3.40388 z m 0,4.156738 11.5668,5.44194 -11.5668,5.441884 -11.566875,-5.441884 z m -9.400387,10.615912 9.400387,4.424762 9.400385,-4.424762 v 4.946108 l -9.400385,4.700193 -9.400387,-4.700193 z"
     fill="#313340"
     stroke="#ffffff"
     stroke-width="0.752031"
     id="path843" />
</svg>
  ''';
  @override
  Widget build(BuildContext context) {
    // String string = svgString.replaceAll('#000000', '#' + colorString(iconColorFinal));
    return SvgPicture.string(
      svgString,
      color: iconColor ?? Theme.of(context).indicatorColor,
    );
  }
}
