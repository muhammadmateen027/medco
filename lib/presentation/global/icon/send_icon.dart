import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SendIcon extends StatelessWidget {
  const SendIcon({this.iconColor});
  final Color? iconColor;
  final String svgString = '''
    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <svg
       viewBox="0 0 50 50"
       fill="none"
       version="1.1"
       id="svg4">
      <path
         d="m 31.594451,18.386929 -9.890639,9.996218 -11.249189,-7.035916 c -1.6117663,-1.0084 -1.2764908,-3.456603 0.546576,-3.989727 L 37.70973,9.5358863 c 1.669426,-0.489289 3.216594,1.0715307 2.720526,2.7463307 l -7.901554,26.690012 c -0.541328,1.825586 -2.975683,2.151789 -3.97449,0.533034 L 21.698565,28.38495"
         stroke="#130f26"
         stroke-width="2.70484"
         stroke-linecap="round"
         stroke-linejoin="round"
         id="path2" />
    </svg>
    ''';

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      svgString,
      color: iconColor ?? Theme.of(context).indicatorColor,
    );
  }
}