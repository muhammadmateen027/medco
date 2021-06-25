import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeartIcon extends StatelessWidget {
  HeartIcon({
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
       id="svg4">
      <path
         fill-rule="evenodd"
         clip-rule="evenodd"
         d="M 24.540546,42.02336 C 20.366924,39.454799 16.484287,36.431793 12.962095,33.008315 10.485846,30.542881 8.6006963,27.53713 7.4510433,24.221615 5.3822316,17.789757 7.7987481,10.42654 14.561517,8.2474363 18.115751,7.1032225 21.997525,7.7571985 24.992582,10.00478 c 2.99612,-2.2448528 6.87645,-2.8985901 10.430945,-1.7573437 6.762688,2.1791037 9.196622,9.5423207 7.127849,15.9741787 -1.149653,3.315515 -3.034844,6.321266 -5.511112,8.7867 -3.522192,3.423478 -7.404729,6.446484 -11.578391,9.015045 l -0.452036,0.281294 z"
         fill="white"
         stroke="#F44D4D"
         stroke-width="3.00956"
         stroke-linecap="round"
         stroke-linejoin="round"
         id="path2"
         style="fill:none;stroke:#000000;stroke-opacity:1" />
    </svg>
    ''';
  final String svgStringActive = '''
    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <svg
       viewBox="0 0 50 50"
       fill="none"
       version="1.1"
       id="svg4">
      <path
         fill-rule="evenodd"
         clip-rule="evenodd"
         d="M 24.540546,42.02336 C 20.366924,39.454799 16.484287,36.431793 12.962095,33.008315 10.485846,30.542881 8.6006963,27.53713 7.4510433,24.221615 5.3822316,17.789757 7.7987481,10.42654 14.561517,8.2474363 18.115751,7.1032225 21.997525,7.7571985 24.992582,10.00478 c 2.99612,-2.2448528 6.87645,-2.8985901 10.430945,-1.7573437 6.762688,2.1791037 9.196622,9.5423207 7.127849,15.9741787 -1.149653,3.315515 -3.034844,6.321266 -5.511112,8.7867 -3.522192,3.423478 -7.404729,6.446484 -11.578391,9.015045 l -0.452036,0.281294 z"
         fill="white"
         stroke="#F44D4D"
         stroke-width="3.00956"
         stroke-linecap="round"
         stroke-linejoin="round"
         id="path2"
         style="fill:#000000;stroke:#000000;stroke-opacity:1;fill-opacity:1" />
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