import 'package:flutter/material.dart';

///Integer Utilities extension
extension IntUtils on int {
  ///horizontal Gap
  SizedBox get gapWidth => SizedBox(width: toDouble());

  ///vertical Gap
  SizedBox get gapHeight => SizedBox(height: toDouble());

  ///All side padding
  EdgeInsets get allPadding => EdgeInsets.all(toDouble());

  ///Vertical Padding
  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: toDouble());

  ///Horizontal Padding
  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(horizontal: toDouble());

  ///Rectangular Border Radius
  RoundedRectangleBorder get rectBorder => RoundedRectangleBorder(
        borderRadius: circularRadius,
      );

  ///Circular Radius
  BorderRadius get circularRadius => BorderRadius.circular(toDouble());
}

///Double Utilities extension
extension DateUtils on DateTime {
  ///Get the data only
  String get dateOnly => toString().split(' ').first;
}

///Context Utilities extension
extension ContextUtils on BuildContext {
  ///Get the theme
  ThemeData get theme => Theme.of(this);

  /// Get textTheme
  TextTheme get textTheme => theme.textTheme;
}
