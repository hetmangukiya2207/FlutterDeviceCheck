import 'package:get/get.dart';

class InternetConnectionModel {
  RxBool _isConnected = false.obs;

  RxBool get isConnected => _isConnected;

  void connect() {
    _isConnected = true.obs;
  }

  void disconnect() {
    _isConnected = false.obs;
  }
}