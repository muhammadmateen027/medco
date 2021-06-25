import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderMaleIcon extends StatelessWidget {
  GenderMaleIcon({this.iconColor});
  final Color? iconColor;
  final String svgString = '''
  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
  <svg viewBox="0 0 50 50" fill="none" version="1.1" id="svg4">
  <path
     d="m 26.907247,5.9275336 v 3.8144931 h 10.66866 L 27.264854,20.053079 c -2.235053,-1.683742 -4.984159,-2.682066 -7.986594,-2.682066 -7.353318,0 -13.3507264,5.997409 -13.3507264,13.350726 0,7.353389 5.9974084,13.350727 13.3507264,13.350727 7.353341,0 13.350726,-5.997338 13.350726,-13.350727 0,-3.002483 -0.998205,-5.751541 -2.682066,-7.986595 L 40.257972,12.424093 v 10.668659 h 3.814494 V 5.9275336 Z M 19.27826,21.185506 c 5.289629,0 9.536233,4.246604 9.536233,9.536233 0,5.289749 -4.246604,9.536233 -9.536233,9.536233 -5.28963,0 -9.5362333,-4.246484 -9.5362333,-9.536233 0,-5.289629 4.2466033,-9.536233 9.5362333,-9.536233 z"
     fill="#313340"
     stroke="#ffffff"
     stroke-width="0.476812"
     id="path2" />
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