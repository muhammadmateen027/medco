import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReportIcon extends StatelessWidget {
  const ReportIcon({this.iconColor});

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
        d="M 5.8085526,25.004318 A 19.201524,19.201524 0 0 1 25.001439,5.8085527 19.187129,19.187129 0 0 1 44.191447,24.998561 c 0,10.596822 -8.578791,19.192886 -19.190008,19.192886 A 19.198644,19.198644 0 0 1 5.8085526,25.004318 Z m 17.5030374,-7.2747 c 0,-0.921212 0.768637,-1.689849 1.689849,-1.689849 0.921212,0 1.669698,0.768637 1.669698,1.689849 v 8.480913 c 0,0.924091 -0.748486,1.669698 -1.669698,1.669698 A 1.6869704,1.6869704 0 0 1 23.31159,26.210531 Z m 1.707122,16.256522 a 1.692728,1.692728 0 0 1 -1.68697,-1.689849 c 0,-0.921212 0.748485,-1.669698 1.669697,-1.669698 0.938485,0 1.686971,0.748486 1.686971,1.669698 0,0.921212 -0.748486,1.689849 -1.669698,1.689849 z"
        fill="#ff3e3e"
        id="path832"
        style="fill:#000000;fill-opacity:1;stroke-width:2.87878" />
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
