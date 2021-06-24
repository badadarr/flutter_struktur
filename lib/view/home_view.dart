import 'package:belajar_struktur_mvvm/data/provider_network/surah_provider_net.dart';
import 'package:belajar_struktur_mvvm/data/repository/surah_repository.dart';
import 'package:belajar_struktur_mvvm/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  // Panggil viewmodel
  HomeViewModel homeModel = Get.find();
  @override
  Widget build(BuildContext context) {
    // Memanggil method yang akan mentrigger untuk mendapatkan data
    homeModel.getAllSurah();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Obx(() => ListView.builder(
            itemBuilder: (context, index) =>
                ListTile(title: Text(homeModel.listSurah[index].name)),
            itemCount: homeModel.listSurah.length,
          )),
    );
  }
}
