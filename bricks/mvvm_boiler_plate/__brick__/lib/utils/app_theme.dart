import 'package:{{project}}/utils/utils.dart';
import 'package:flutter/material.dart';

///Class for App themes
class AppThemeConfig {
  ///light theme data
  static ThemeData light() {
    final scheme = ColorScheme.fromSeed(
      seedColor: Colors.green,
      primary: Colors.green,
    );
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.green.shade50,
      colorScheme: scheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.green.shade50,
      ),
      dividerColor: Colors.black12,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black26),
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: scheme.primary,
        padding: 16.verticalPadding,
        shape: 16.rectBorder,
        textTheme: ButtonTextTheme.primary,
        minWidth: double.infinity,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.white,
        elevation: 8,
        padding: EdgeInsets.zero,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: Colors.white,
        indicatorColor: Colors.green,
        shadowColor: Colors.transparent,
        elevation: 8,
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        iconTheme: WidgetStateProperty.resolveWith(
          (state) {
            const data = IconThemeData(size: 28);
            if (state.isEmpty) {
              return data.copyWith(color: scheme.primary, size: 24);
            }
            return data.copyWith(
              color: state.first == WidgetState.selected ? Colors.white : scheme.primary,
            );
          },
        ),
      ),
    );
  }

  ///dark theme data
  static ThemeData dark() {
    return ThemeData.dark(
      useMaterial3: true,
    );
  }
}
