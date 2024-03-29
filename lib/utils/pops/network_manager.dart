import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ecommeraceapp/utils/pops/loader_animation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetWorkManager extends GetxController {
  static NetWorkManager get instance => Get.find();
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connnectionStatus = ConnectivityResult.none.obs;


  Future<void> _updateConetionStatus(ConnectivityResult result) async {
    _connnectionStatus.value = result;
    if (_connnectionStatus.value == ConnectivityResult.none) {
      TLoaders.warningSnakeBar(title: "No Internet Connection");
    }
  }

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }

  // Dispose or close the active connectivity stream //
  @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }
}
