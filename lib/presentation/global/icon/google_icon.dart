import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class GoogleIcon extends StatelessWidget {
  GoogleIcon({this.iconColor});
  final Color? iconColor;
  final String svgString = '''
  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg
   version="1.1"
   id="Layer_1"
   x="0px"
   y="0px"
   viewBox="0 0 50 50"
   xml:space="preserve">
   <path
   id="path2"
   style="fill:#000000;fill-opacity:1;stroke-width:0.0840997"
   d="m 25,3.4704787 c -8.320824,0 -15.5391804,4.7198915 -19.1223319,11.6282593 C 4.3386437,18.063169 3.4704787,21.429883 3.4704787,25 c 0,3.691976 0.9286931,7.166248 2.5658618,10.202836 C 9.6727272,41.94679 16.801036,46.529521 25,46.529521 c 5.101991,0 9.788916,-1.774363 13.478454,-4.739971 3.793652,-3.049624 6.532254,-7.359102 7.580305,-12.294323 0.30873,-1.4503 0.470762,-2.953848 0.470762,-4.495227 0,-1.37461 -0.128897,-2.719635 -0.376149,-4.022003 H 37.153718 25.473389 v 8.51723 h 11.512295 c -1.036277,2.765702 -3.003577,5.075933 -5.520849,6.55222 h -1.69e-4 c -1.896196,1.113144 -4.105927,1.750817 -6.46467,1.750817 -5.487674,0 -10.16852,-3.454267 -11.986671,-8.306652 C 12.488122,28.094633 12.201734,26.580401 12.201566,25 c 0,-1.456187 0.243707,-2.855528 0.690866,-4.159158 H 12.8926 C 14.619672,15.814457 19.388111,12.201734 25,12.201734 c 2.485313,0 4.805094,0.708601 6.76756,1.935279 L 38.742251,8.4269401 C 35.013607,5.3312304 30.223852,3.4704787 25,3.4704787 Z" />
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
