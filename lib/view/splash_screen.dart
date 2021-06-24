import 'package:belajar_struktur_mvvm/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      // Kode yang mau didelay
      Navigator.pushReplacementNamed(context, RoutesName.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Halaman Splash Screen"),
      ),
    );
  }
}
