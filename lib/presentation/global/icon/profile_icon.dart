import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProfileIcon extends StatelessWidget {
  ProfileIcon({this.iconColor});
  final Color? iconColor;
  final String svgString = '''
 <?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg
   viewBox="0 0 50 50"
   fill="none"
   version="1.1"
   id="svg11">
  <mask
     id="mask0"
     mask-type="alpha"
     maskUnits="userSpaceOnUse"
     x="4"
     y="14"
     width="16"
     height="8">
    <path
       fill-rule="evenodd"
       clip-rule="evenodd"
       d="M 4,14.4561 H 19.754 V 21.795 H 4 Z"
       fill="#ffffff"
       id="path4" />
  </mask>
  <g
     id="g829"
     transform="matrix(2.0217942,0,0,2.0217942,0.98715095,0.94570414)">
    <path
       fill-rule="evenodd"
       clip-rule="evenodd"
       d="m 11.8766,3.5 c -2.104,0 -3.817,1.713 -3.817,3.818 -0.004,1.019 0.388,1.974 1.103,2.695 0.716,0.72 1.316447,1.119 2.890947,1.121 1.5745,0.002 3.641053,-1.711 3.641053,-3.816 0,-2.105 -1.713,-3.818 -3.818,-3.818 z m 0,9.136 h -0.031 C 10.4266,12.631 9.0966,12.074 8.0996,11.07 7.1016,10.065 6.5546,8.731 6.5596,7.315 6.5596,4.386 8.9446,2 11.8766,2 c 2.933,0 5.318,2.386 5.318,5.318 0,2.932 -2.385,5.318 -5.318,5.318 z"
       fill="#313340"
       id="path2"
       style="fill:#000000;fill-opacity:1" />
    <g
       mask="url(#mask0)"
       id="g9">
      <path
         fill-rule="evenodd"
         clip-rule="evenodd"
         d="m 11.877,15.9561 c -4.231,0 -6.377,0.727 -6.377,2.159 0,1.446 2.146,2.18 6.377,2.18 4.231,0 6.377,-0.727 6.377,-2.158 0,-1.448 -2.146,-2.181 -6.377,-2.181 z m 0,5.839 c -1.948,0 -7.877,0 -7.877,-3.68 0,-3.28 4.495,-3.659 7.877,-3.659 1.948,0 7.877,0 7.877,3.681 0,3.279 -4.495,3.658 -7.877,3.658 z"
         fill="#313340"
         id="path7"
         style="fill:#000000;fill-opacity:1" />
    </g>
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