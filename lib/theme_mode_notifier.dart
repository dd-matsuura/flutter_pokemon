import 'package:flutter/material.dart';
import 'package:flutter_pokemon/theme_mode.dart';

class ThemeModeNotifier extends ChangeNotifier {
  late ThemeMode _themeMode;

  ThemeModeNotifier() {
    _init();
  }

  ThemeMode get mode => _themeMode;

  // 初期化
  void _init() async {
    _themeMode = await loadThemeMode();
    notifyListeners();
  }

  // 更新
  void update(ThemeMode nextMode) {
    _themeMode = nextMode;
    saveThemeMode(nextMode);
    notifyListeners();
  }
}
