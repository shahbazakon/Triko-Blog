import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color black9005e = fromHex('#5e000000');

  static Color lightBlueA200 = fromHex('#40bfff');

  static Color black90090 = fromHex('#90000000');

  static Color green700 = fromHex('#1ca622');

  static Color black90087 = fromHex('#87000000');

  static Color black90021 = fromHex('#21000000');

  static Color black90067 = fromHex('#67000000');

  static Color black900 = fromHex('#000000');

  static Color black90063 = fromHex('#63000000');

  static Color gray700 = fromHex('#595959');

  static Color gray400 = fromHex('#c4c4c4');

  static Color whiteA7006c = fromHex('#6cffffff');

  static Color black9000a = fromHex('#0a000000');

  static Color blueGray400 = fromHex('#888888');

  static Color gray90087 = fromHex('#871e2022');

  static Color blueGray300 = fromHex('#9098b1');

  static Color black9006c = fromHex('#6c000000');

  static Color gray900 = fromHex('#1b1f31');

  static Color gray90001 = fromHex('#1e2022');

  static Color black900A9 = fromHex('#a9000000');

  static Color gray300 = fromHex('#e1e1e1');

  static Color gray40001 = fromHex('#bcbcbc');

  static Color gray40087 = fromHex('#87c4c4c4');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70001 = fromHex('#616161');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
