import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LinkIcon extends StatelessWidget {
  LinkIcon({this.iconColor});

  final Color? iconColor;
  final String svgString = '''
  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <svg
      viewBox="0 0 50 50"
      version="1.1"
      id="svg2637">
      <g
        id="layer1">
        <path
          id="rect849"
          style="color:#000000;fill:#000000;stroke-width:1.20785;stroke-linecap:round;stroke-linejoin:round;-inkscape-stroke:none;paint-order:stroke markers fill"
          d="m 39.387625,10.611534 c -3.675554,-3.6755177 -9.671162,-3.6738744 -13.34671,0.0018 l -5.056105,5.056102 2.49886,2.498856 5.056101,-5.056102 c 2.333687,-2.33369 6.013641,-2.33369 8.347326,0 2.333681,2.333691 2.333681,6.013637 0,8.347327 l -5.056106,5.056102 2.500528,2.500545 5.056106,-5.056146 c 3.675548,-3.675517 3.675548,-9.67281 0,-13.348373 z m -8.02371,5.684992 -15.066552,15.066547 2.340388,2.340402 15.066552,-15.066547 z m -15.693768,4.687468 -5.057773,5.057745 c -3.6755479,3.675562 -3.6755479,9.669522 0,13.345039 3.675554,3.675563 9.671158,3.677207 13.346711,0.0016 L 29.016858,34.330655 26.51633,31.83011 21.458557,36.8879 c -2.333685,2.333691 -6.013634,2.333691 -8.347321,0 -2.333685,-2.33369 -2.333685,-6.013636 0,-8.347326 l 5.057768,-5.057791 z" />
      </g>
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
