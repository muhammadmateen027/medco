import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrashIcon extends StatelessWidget {
  TrashIcon({this.iconColor});

  final Color? iconColor;
  final String svgString = '''
  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <svg
      viewBox="0 0 50 50"
      fill="none"
      version="1.1"
      id="svg834">
      <path
        fill-rule="evenodd"
        clip-rule="evenodd"
        d="m 40.820639,12.100265 c 0.742822,0 1.361078,0.616623 1.361078,1.401255 v 0.72544 c 0,0.765532 -0.618256,1.401255 -1.361078,1.401255 H 9.1810853 c -0.7445267,0 -1.3628022,-0.635723 -1.3628022,-1.401255 v -0.72544 c 0,-0.784632 0.6182755,-1.401255 1.3628022,-1.401255 h 5.5663267 c 1.130729,0 2.114754,-0.803704 2.369129,-1.937697 l 0.291488,-1.3019732 c 0.453025,-1.7735226 1.94394,-2.9514123 3.650227,-2.9514123 h 7.883488 c 1.687702,0 3.195341,1.1778897 3.631642,2.8578578 l 0.311934,1.3936087 c 0.252514,1.135912 1.236539,1.939616 2.36913,1.939616 z M 37.992814,38.6193 c 0.581315,-5.415906 1.598759,-18.282979 1.598759,-18.412787 0.03694,-0.393261 -0.09106,-0.765532 -0.345352,-1.065267 -0.272903,-0.280634 -0.618256,-0.446724 -0.999117,-0.446724 H 11.767243 c -0.382465,0 -0.746374,0.16609 -0.998888,0.446724 -0.256208,0.299735 -0.382468,0.672006 -0.3639,1.065267 0.0034,0.02377 0.03992,0.477108 0.100943,1.23485 0.271156,3.366185 1.026355,12.741617 1.514345,17.177937 0.345352,3.268535 2.489802,5.322609 5.596056,5.397063 2.396964,0.05527 4.866349,0.07446 7.391432,0.07446 2.378407,0 4.793956,-0.01919 7.265174,-0.07446 3.213926,-0.05555 5.356429,-2.07326 5.720395,-5.397063 z"
        fill="#000000"
        id="path832"
        style="stroke-width:2.86362" />
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