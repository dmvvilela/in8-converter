import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HistoryController extends GetxController {
  final _box = GetStorage();
  List<dynamic> history;

  @override
  void onInit() {
    history = _box.read('history');
    _box.listenKey('history', (h) => history = h);
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
