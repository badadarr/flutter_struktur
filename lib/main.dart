import 'package:belajar_struktur_mvvm/routes/app_routes.dart';
import 'package:belajar_struktur_mvvm/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    theme: AppThemes.appTheme,
    initialRoute: '/',
    getPages: AppRoutes.routes,
  ));
}
