import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryIcon extends StatelessWidget {
  CategoryIcon({this.iconColor});
  final Color? iconColor;
  final String svgString = '''
 <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <svg
      viewBox="0 0 50 50"
      fill="none"
      version="1.1"
      id="svg10">
      <g
        id="g835"
        transform="matrix(1.679248,0,0,1.679248,6.5284397,6.5283557)">
        <path
          fill-rule="evenodd"
          clip-rule="evenodd"
          d="m 15.2853,1 h 3.2666 c 1.3516,0 2.4479,1.1059 2.4479,2.47018 V 6.7641 c 0,1.36325 -1.0963,2.47019 -2.4479,2.47019 h -3.2666 c -1.3525,0 -2.4489,-1.10694 -2.4489,-2.47019 V 3.47018 C 12.8364,2.1059 13.9328,1 15.2853,1 Z"
          stroke="#000000"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          id="path2" />
        <path
          fill-rule="evenodd"
          clip-rule="evenodd"
          d="M 3.44892,1 H 6.71449 C 8.06703,1 9.16341,2.1059 9.16341,3.47018 V 6.7641 c 0,1.36325 -1.09638,2.47019 -2.44892,2.47019 H 3.44892 C 2.09638,9.23429 1,8.12735 1,6.7641 V 3.47018 C 1,2.1059 2.09638,1 3.44892,1 Z"
          stroke="#000000"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          id="path4" />
        <path
          fill-rule="evenodd"
          clip-rule="evenodd"
          d="m 3.44892,12.7656 h 3.26557 c 1.35254,0 2.44892,1.1059 2.44892,2.4712 v 3.2929 c 0,1.3643 -1.09638,2.4702 -2.44892,2.4702 H 3.44892 C 2.09638,20.9999 1,19.894 1,18.5297 v -3.2929 c 0,-1.3653 1.09638,-2.4712 2.44892,-2.4712 z"
          stroke="#000000"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          id="path6" />
        <path
          fill-rule="evenodd"
          clip-rule="evenodd"
          d="m 15.2853,12.7656 h 3.2666 c 1.3516,0 2.4479,1.1059 2.4479,2.4712 v 3.2929 c 0,1.3643 -1.0963,2.4702 -2.4479,2.4702 h -3.2666 c -1.3525,0 -2.4489,-1.1059 -2.4489,-2.4702 v -3.2929 c 0,-1.3653 1.0964,-2.4712 2.4489,-2.4712 z"
          stroke="#000000"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          id="path8" />
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