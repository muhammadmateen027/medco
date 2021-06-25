import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailIcon extends StatelessWidget {
  EmailIcon({this.iconColor});

  final Color? iconColor;
  final String svgString = '''
  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg
   viewBox="0 0 50 50"
   fill="none"
   version="1.1"
   id="svg4">
  <path
     d="m 10.329528,7.6127744 c -3.8816325,0 -7.06356,3.1819276 -7.06356,7.0635606 v 20.64733 c 0,3.881698 3.1819275,7.063561 7.06356,7.063561 h 29.340944 c 3.881698,0 7.06356,-3.181863 7.06356,-7.063561 v -20.64733 c 0,-3.881633 -3.181862,-7.0635606 -7.06356,-7.0635606 z m 0,3.2601046 h 29.340944 c 2.119068,0 3.803455,1.684322 3.803455,3.803456 v 1.201327 L 25,25.863841 6.5260728,15.877662 v -1.201327 c 0,-2.119134 1.6843223,-3.803456 3.8034552,-3.803456 z m -3.8034552,8.710587 17.6992392,9.568082 c 0.483452,0.261113 1.065924,0.261113 1.549289,0 l 17.699326,-9.568082 v 15.740199 c 0,2.119068 -1.684387,3.803456 -3.803455,3.803456 H 10.329528 c -2.1191329,0 -3.8034552,-1.684388 -3.8034552,-3.803456 z"
     fill="#000000"
     id="path2"
     style="stroke-width:2.1734" />
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
