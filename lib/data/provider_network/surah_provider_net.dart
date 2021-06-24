import 'dart:convert';

import 'package:belajar_struktur_mvvm/app_config.dart';
import 'package:belajar_struktur_mvvm/data/model/surah_model.dart';
import 'package:http/http.dart' as http;

class SurahProviderNet {
  final String surahBaseUrl = "${AppConfig.baseNetworkUrl}/surah";

  Future<List<SurahModel>> getAllSurah() async {
    List<SurahModel> list = [];

    // Mengambil data dari internet
    var response = await http.get(Uri.parse(surahBaseUrl));

    // kita cek apakah response nya berhasil
    if (response.statusCode == 200) {
      // Response berhasil, kita ambil datanya
      Map<String, dynamic> result = jsonDecode(response.body);

      // Dapatkan list surat
      List<dynamic> surah = result['data'];
      surah.forEach((surah) {
        // masukeun data ke list surah
        list.add(SurahModel(
            name: (surah['englishName'] as String),
            nameArabic: surah['name'],
            numberOfAyahs: surah['numberOfAyahs']));
      });
    }

    return list;
  }
}
