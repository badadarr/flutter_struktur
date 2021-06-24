import 'package:belajar_struktur_mvvm/data/model/surah_model.dart';
import 'package:belajar_struktur_mvvm/data/provider_network/surah_provider_net.dart';
import 'package:http/http.dart' as http;

class SurahRepository {
  final SurahProviderNet surahProviderNet;
  SurahRepository({required this.surahProviderNet});

  // Hanya mengoper dari provider
  Future<List<SurahModel>> getAllSurah() {
    return surahProviderNet.getAllSurah();
  }
}
