import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';


class GalleryProvider extends ChangeNotifier{
  final auth = LocalAuthentication();

  Future<bool> checkFingerPrint() async {
    bool isSupport = await auth.isDeviceSupported();
    bool isBio = await auth.canCheckBiometrics;

    if(isSupport && isBio){
      return await auth.authenticate(localizedReason: 'Please Add Your FingerPrint');
    }
    else{
      log('Fingerprint successfully worked! ');
    }
    return false;
  }
}