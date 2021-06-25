import 'package:flutter/material.dart';



class AppColor {
  static const Color _defaultMain = Colors.white;
  static const Color _defaultContrast = Color(0xFF1E1E2A);
  static const Color _style = Color(0xFFFF3E3E);
  static const Color _alternative = Color(0xFF3D5AF1);

  /// Main Color - This is the canvas color of the corresponding Mode
  static Color get main => _defaultMain;

  /// Contrast Color - This is the contrast color for the corresponding Mode
  static Color get contrast => _defaultContrast;

  /// Style Color - The color used to style the application. Currently a red shade.
  static Color get style => _style;

  /// Alternative Style Color - Used for elements that should stand out from those having [style] color.
  static Color get alternative => _alternative;

  /// Transparent Colour
  static Color get plain => Colors.transparent;

  /// Default Light Mode background colour
  static Color get light => _defaultMain;

  /// Default Dark Mode background colour
  static Color get dark => _defaultContrast;

  /// Practically, one letter less than native flutter way.
  static Color get white => Colors.white;

  /// Practically, one letter less than native flutter way.
  static Color get black => Colors.black;

  // Uncomment if require black color in app
  static final int appColorCode = 0xFFFFFFFF;

  static Color get transparent => Colors.transparent;

  static Color get notWhite => HexColor('EDF0F2');

  static Color get nearlyWhite => HexColor('FEFEFE');

  static Color get grey => Colors.grey;

  static Color get greenAccent => Colors.greenAccent;

  static Color get green => HexColor('00D038');

  static Color get greenStatus => HexColor('00D800');

  static Color get darkGrey => Colors.black54;

  static Color get lightGrey => Colors.black26;

  static Color get red => Colors.red;

  static Color get purple => Colors.purple;

  static Color get darkBlue => HexColor('0057AA');

  static Color get darkText => HexColor('253840');

  static Color get darkerText => HexColor('17262A');

  static Color get lightText => HexColor('4A6572');

  static Color get deactivatedText => HexColor('767676');

  static Color get dismissibleBackground => HexColor('364A54');

  static Color get chipBackground => HexColor('EEF1F3');

  static Color get spacer => HexColor('F2F2F2');
  static const String fontName = 'Airbnb';

  // Uncomment if require black color in app
  static Color get appColor => Color(appColorCode);
  static Color get secondaryColor => HexColor('0041aa');

  static Color get appDarkColor => HexColor('1058D1');

  static Color get headerLightColor => HexColor('3C80F7');

  static Color get appLightColor => HexColor('E5F2FF');

  static LinearGradient gradient = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [appColor, red],
  );

  static LinearGradient notificationCardGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [HexColor('1F8CF0'), HexColor('6FCAFF')],
  );

  static Map<int, Color> primaryColor = {
    50: HexColor('e3f2fd'),
    100: HexColor('bbdefb'),
    200: HexColor('90caf9'),
    300: HexColor('64b5f6'),
    400: HexColor('42a5f5'),
    500: HexColor('2196f3'),
    600: HexColor('1e88e5'),
    700: HexColor('1976d2'),
    800: HexColor('1565c0'),
    900: HexColor('0d47a1'),
  };
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
