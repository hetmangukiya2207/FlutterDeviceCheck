import 'dart:async';
import 'package:get/get.dart';

class ConnectionModel {
  RxString connectivityStatus;
  StreamSubscription? connectivityStream;

  ConnectionModel({
    required this.connectivityStatus,
    this.connectivityStream,
  });
}