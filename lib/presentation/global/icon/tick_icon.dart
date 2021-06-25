import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TickIcon extends StatelessWidget {
  const TickIcon({this.iconColor});
  final Color? iconColor;
  final String svgString = '''
  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg viewBox="0 0 50 50" fill="none" version="1.1" id="svg4">
<path
     fill-rule="evenodd"
     clip-rule="evenodd"
     d="m 16.263472,4.8233089 h 17.493187 c 6.839892,0 11.42004,4.8020514 11.42004,11.9445931 v 16.486415 c 0,7.120241 -4.580148,11.922375 -11.42004,11.922375 H 16.263472 c -6.8398919,0 -11.4401707,-4.802134 -11.4401707,-11.922375 V 16.767902 c 0,-7.1425417 4.6002788,-11.9445931 11.4401707,-11.9445931 z m 7.586399,26.2096201 9.584004,-9.584005 c 0.685965,-0.685964 0.685965,-1.795639 0,-2.501865 -0.686091,-0.685963 -1.8159,-0.685963 -2.501992,0 L 22.599003,27.280068 19.068,23.749065 c -0.685965,-0.685965 -1.815863,-0.685965 -2.501878,0 -0.686003,0.686091 -0.686003,1.795767 0,2.501993 l 4.802018,4.781871 c 0.343047,0.342918 0.786891,0.504374 1.230863,0.504374 0.463978,0 0.907949,-0.161456 1.250868,-0.504374 z"
     fill="white"
     id="path2"
     style="fill:#000000;fill-opacity:1;stroke-width:1.27432" />
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
