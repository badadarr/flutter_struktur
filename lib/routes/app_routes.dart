import 'package:belajar_struktur_mvvm/bindings/home_bindings.dart';
import 'package:belajar_struktur_mvvm/routes/routes_name.dart';
import 'package:belajar_struktur_mvvm/view/detail_view.dart';
import 'package:belajar_struktur_mvvm/view/home_view.dart';
import 'package:belajar_struktur_mvvm/view/splash_screen.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  static final routes = [
    GetPage(name: RoutesName.splash, page: () => SplashView()),
    GetPage(
        name: RoutesName.home, page: () => HomeView(), binding: HomeBinding()),
    GetPage(name: RoutesName.detail, page: () => DetailView())
  ];
}
