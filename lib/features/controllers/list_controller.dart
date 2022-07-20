import 'package:test_kitabisa/features/services/list_service.dart';
import 'package:test_kitabisa/models/google_api_model.dart';
import 'package:get/state_manager.dart';

class ListController extends GetxController {
  var isLoading1 = true.obs;

  late GoogleApiModel activitiesModel;

  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  _loadData() async {
    fetchGetActivities();
  }

  void fetchGetActivities() async {
    isLoading1(true);
    try {
      var data = await ListServices.fetchNowPlaying();
      print(data);
      activitiesModel = data;
      update();
      isLoading1(false);
    } finally {}
    update();
  }
}
