import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeIcon extends StatelessWidget {
  HomeIcon({
    required this.isActive,
    this.iconColor
  });

  final bool isActive;
  final Color? iconColor;
  final String svgString = '''
    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <svg
      viewBox="0 0 50 50"
      fill="none"
      version="1.1"
      id="svg6">
      <g
        id="g829"
        transform="matrix(1.9178254,0,0,1.9178254,4.3593472,3.6078074)">
        <path
          d="M 8.01855,15.0569 H 13.5073"
          stroke="#000000"
          stroke-opacity="1"
          stroke-width="1.8"
          stroke-linecap="round"
          stroke-linejoin="round"
          id="path2" />
        <path
          fill-rule="evenodd"
          clip-rule="evenodd"
          d="m 1.71436,12.7702 c 0,-5.31509 0.57955,-4.94414 3.69911,-7.83717 1.36487,-1.09869 3.48863,-3.21867 5.32263,-3.21867 1.833,0 3.9993,2.1096 5.3764,3.21867 3.1196,2.89303 3.6982,2.52208 3.6982,7.83717 0,7.822 -1.8491,7.822 -9.0482,7.822 -7.19906,0 -9.04814,0 -9.04814,-7.822 z"
          stroke="#000000"
          stroke-opacity="1"
          stroke-width="1.8"
          stroke-linecap="round"
          stroke-linejoin="round"
          id="path4" />
      </g>
    </svg>
  ''';

  final String svgStringActive = '''
    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <svg
      viewBox="0 0 50 50"
      fill="none"
      version="1.1"
      id="svg6">
      <g
        id="g829"
        transform="matrix(1.9178254,0,0,1.9178254,4.3593472,3.6078074)">
        <path
          id="path1629"
          style="color:#000000;clip-rule:evenodd;fill:#000000;fill-rule:evenodd;stroke-width:3.45209;stroke-linecap:round;stroke-linejoin:round;-inkscape-stroke:none"
          d="M 24.949219 5.1699219 C 22.525513 5.1699219 20.408051 6.4219428 18.503906 7.7871094 C 16.599761 9.1522758 14.887172 10.736889 13.660156 11.724609 A 1.7262154 1.7262154 0 0 0 13.566406 11.802734 C 10.641067 14.515645 8.738862 15.740777 7.453125 17.984375 C 6.1673882 20.227973 5.921875 22.938219 5.921875 28.097656 C 5.921875 31.915964 6.1324624 34.845628 6.7460938 37.207031 C 7.3597252 39.568434 8.4647941 41.425447 10.138672 42.626953 C 13.486427 45.029965 18.094784 44.826172 24.998047 44.826172 C 31.901348 44.826172 36.513553 45.02996 39.861328 42.626953 C 41.535214 41.425449 42.642222 39.568436 43.255859 37.207031 C 43.869496 34.845626 44.080078 31.915966 44.080078 28.097656 C 44.080078 22.938322 43.832106 20.228063 42.546875 17.984375 C 41.261646 15.740687 39.359035 14.515706 36.433594 11.802734 A 1.7262154 1.7262154 0 0 0 36.34375 11.724609 C 35.095238 10.71912 33.356841 9.1348072 31.429688 7.7734375 C 29.502534 6.4120678 27.369071 5.1699219 24.949219 5.1699219 z M 19.736328 30.757812 L 30.265625 30.757812 A 1.7260428 1.7260428 0 0 1 31.992188 32.484375 A 1.7260428 1.7260428 0 0 1 30.265625 34.210938 L 19.736328 34.210938 A 1.7260428 1.7260428 0 0 1 18.011719 32.484375 A 1.7260428 1.7260428 0 0 1 19.736328 30.757812 z "
          transform="matrix(0.5214239,0,0,0.5214239,-2.2730678,-1.881197)" />
      </g>
    </svg>
  ''';

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      isActive ? svgStringActive : svgString,
      color: iconColor ?? Theme.of(context).indicatorColor,
    );
  }
}