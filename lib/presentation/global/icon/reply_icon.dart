import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReplyIcon extends StatelessWidget {
  ReplyIcon({
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
        d="M 42.621182,7.4131683 A 3.6106024,3.6106024 0 0 0 39.016181,6.4748038 L 8.9577061,15.214198 a 3.5853926,3.5853926 0 0 0 -2.5854042,2.840304 c -0.2633023,1.400543 0.6610568,3.182036 1.8739278,3.927125 l 9.3976503,5.775844 a 2.4369465,2.4369465 0 0 0 3.005568,-0.35854 l 10.76178,-10.831807 a 1.3725331,1.3725331 0 0 1 1.980368,0 1.4229527,1.4229527 0 0 1 0,1.994374 L 22.610209,29.393305 a 2.4705596,2.4705596 0 0 0 -0.358539,3.022374 l 5.74223,9.492888 c 0.672261,1.126038 1.82911,1.764685 3.100804,1.764685 0.148458,0 0.316524,0 0.467782,-0.01681 a 3.6414143,3.6414143 0 0 0 3.044783,-2.593807 L 43.51753,11.040577 A 3.6694253,3.6694253 0 0 0 42.621182,7.4131683 Z"
        fill="#000000"
        id="path832"
        style="stroke-width:2.80108" />
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
