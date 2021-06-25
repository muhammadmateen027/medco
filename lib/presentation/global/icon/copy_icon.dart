import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CopyIcon extends StatelessWidget {
  CopyIcon({
    this.iconColor,
  });

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
        d="m 33.895434,35.297554 c -0.823829,0.195529 -1.658087,0.338917 -2.494952,0.432771 a 11.072164,11.072164 0 0 1 -8.102728,7.680385 18.523128,18.523128 0 0 1 -8.459894,0 11.072164,11.072164 0 0 1 -8.2487234,-8.248723 18.523128,18.523128 0 0 1 0,-8.459895 11.072164,11.072164 0 0 1 7.6803854,-8.102728 c 0.09385,-0.836864 0.237242,-1.668515 0.430164,-2.494952 a 12.670289,12.670289 0 0 1 9.440147,-9.440147 21.359604,21.359604 0 0 1 9.755601,0 12.670289,12.670289 0 0 1 9.440148,9.43754 21.359604,21.359604 0 0 1 0,9.758209 12.670289,12.670289 0 0 1 -9.437541,9.43754 z m -9.755601,0 a 21.351783,21.351783 0 0 0 4.051364,0.550089 8.0870857,8.0870857 0 0 1 -5.573884,4.658807 15.53805,15.53805 0 0 1 -7.096405,0 8.0870857,8.0870857 0 0 1 -6.0275117,-6.027512 15.53805,15.53805 0 0 1 0,-7.096404 8.0870857,8.0870857 0 0 1 4.6614147,-5.573884 21.359604,21.359604 0 0 0 0.547482,4.051364 12.670289,12.670289 0 0 0 9.43754,9.43754 z"
        fill="#000000"
        id="path832"
        style="stroke-width:2.60706" />
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
