import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';

class DeviceController extends GetxController {
  RxString deviceType = RxString('');

  @override
  void onInit() {
    super.onInit();
    checkDeviceType();
  }

  Future<void> checkDeviceType() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (GetPlatform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceType.value = 'Android Device';
    } else if (GetPlatform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      deviceType.value = 'iOS Device';
    }
  }
}
