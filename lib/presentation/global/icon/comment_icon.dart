import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CommentIcon extends StatelessWidget {
  CommentIcon({this.iconColor});
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
         d="m 38.01811,38.00899 c -5.624797,5.625566 -13.953869,6.840866 -20.769844,3.688728 -1.006214,-0.405228 -1.831151,-0.732675 -2.615412,-0.732675 -2.184449,0.01306 -4.9034525,2.131193 -6.3165849,0.719616 -1.4131515,-1.413305 0.7065566,-4.134287 0.7065566,-6.33193 0,-0.784337 -0.3144263,-1.594602 -0.7195008,-2.602871 -3.1536794,-6.814938 -1.9366026,-15.14666 3.6882091,-20.770247 7.180394,-7.1830243 18.846163,-7.1830243 26.026576,-0.0018 7.19328,7.194106 7.180412,18.850042 0,26.031223 z"
         stroke="#130f26"
         stroke-width="2.88077"
         stroke-linecap="round"
         stroke-linejoin="round"
         id="path2"
         style="stroke:#000000;stroke-opacity:1" />
    </svg>
    ''';

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      svgString,
      color: iconColor ?? Theme.of(context).indicatorColor
    );
  }
}