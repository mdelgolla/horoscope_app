import 'package:flutter/material.dart';

class AppColors {
  _Container container = _Container();
  _Scaffold scaffold = _Scaffold();
  _Text text = _Text();
}

class _Container {
  List<Color> background = [
    const Color(0xFF1F4247),
    const Color(0xFF0D1D23),
    const Color(0xFF09141A),
  ];
  List<Color> buttonColor = [const Color(0xFF62CDCB), const Color(0xFF4599DB)];
  Color infoCard = Color(0xFF0E191F);
  Color userDataCard = Color(0xFF162329);
}

class _Scaffold {
  Color background = const Color(0xFF09141A);
}

class _Text {
  Color heading = Colors.white;
  Color subheading = Colors.white38;
  Color description = Colors.white54;
  Color underlineText = const Color(0xFF94783E);
  List<Color> highlightedText = [
    const Color(0xFF94783E),
    const Color(0xFFF3EDA6),
    const Color(0xFFF8FAE5),
    const Color(0xFFFFE2BE),
    const Color(0xFFD5BE88),
    const Color(0xFFF8FAE5),
    const Color(0xFFD5BE88)
  ];
}
