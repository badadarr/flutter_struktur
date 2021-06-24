import 'package:belajar_struktur_mvvm/data/model/surah_model.dart';
import 'package:belajar_struktur_mvvm/data/repository/surah_repository.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  var listSurah = List<SurahModel>.empty().obs;

  SurahRepository surahRepository;
  HomeViewModel({required this.surahRepository});

  getAllSurah() async {
    var surahs = await surahRepository.getAllSurah();
    listSurah.value = surahs;
  }
}
