import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderFemaleIcon extends StatelessWidget {
  GenderFemaleIcon({this.iconColor});
  final Color? iconColor;
  final String svgString = '''
  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
  <svg viewBox="0 0 50 50" fill="none" version="1.1" id="svg4">
  <path
     d="m 25,3.0925182 c -7.038631,0 -12.779365,5.7407339 -12.779365,12.7793638 0,6.418211 4.777998,11.716852 10.953741,12.608243 v 7.473616 h -7.302494 v 3.651247 h 7.302494 v 7.302494 h 3.651248 v -7.302494 h 7.302494 V 35.953741 H 26.825624 V 28.480125 C 33.001367,27.588734 37.779365,22.290093 37.779365,15.871882 37.779365,8.8332521 32.038631,3.0925182 25,3.0925182 Z m 0,3.6512471 c 5.063258,0 9.128118,4.0648597 9.128118,9.1281167 C 34.128118,20.93514 30.063258,25 25,25 c -5.063258,0 -9.128118,-4.06486 -9.128118,-9.128118 0,-5.063257 4.06486,-9.1281167 9.128118,-9.1281167 z"
     fill="#313340"
     stroke="#ffffff"
     stroke-width="0.486833"
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