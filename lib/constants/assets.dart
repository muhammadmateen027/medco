import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final _basePath = 'assets';

abstract class Assets {
  static final imagesName = ImageLabel();
  static final images = Images();
  static final json = JsonAssets();
}

class ImageLabel {
  static String _path = '$_basePath/images';

  final logo = '$_path/beam.png';
}

class Images {
  static String _path = '$_basePath/svg';


  final Widget bankIcon = SvgPicture.asset(
    '$_path/bank_icon.svg',
    width: 40,
    height: 40,
  );

  final Widget supaBaseImage = Image.network(
    'https://supabase.io/new/images/logo-dark.png',
    width: 300,
  );
}

class JsonAssets {
  static String _path = '$_basePath/json';

  final vehicles = '$_path/vehicles.json';
}
