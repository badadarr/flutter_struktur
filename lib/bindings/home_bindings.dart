import 'package:belajar_struktur_mvvm/data/provider_network/surah_provider_net.dart';
import 'package:belajar_struktur_mvvm/data/repository/surah_repository.dart';
import 'package:belajar_struktur_mvvm/view_model/home_view_model.dart';
import 'package:get/instance_manager.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeViewModel(
        surahRepository:
            SurahRepository(surahProviderNet: SurahProviderNet())));
  }
}
