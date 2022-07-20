import 'package:test_kitabisa/models/google_api_model.dart';
import 'package:test_kitabisa/networks/api_provider.dart';

class ListServices {
  static final ApiProvider _provider = ApiProvider();
  static Future<GoogleApiModel> fetchNowPlaying() async {
    final response = await _provider.get(
      "/mobile-flutter-test/response.json",
    );
    print(response);
    return GoogleApiModel.fromJson(response);
  }
}
