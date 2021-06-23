import 'dart:convert';

import 'package:belajar_struktur_mvvm/app_config.dart';
import 'package:belajar_struktur_mvvm/data/model/surah_model.dart';
import 'package:http/http.dart' as http;

class SurahProviderNet {
  final String surahBaseUrl = "${AppConfig.baseNetworkUrl}/surah";

  Future<List<SurahModel>> getALlSurah() async {
    List<SurahModel> list = [];

    // Mengambil data dari internet
    var response = await http.get(Uri.parse(surahBaseUrl));

    // kita cek apakah response nya berhasil
    if (response.statusCode == 200) {
      // Response berhasil, kita ambil datanya
      Map<String, dynamic> result = jsonDecode(response.body);
    }

    return list;
  }
}
