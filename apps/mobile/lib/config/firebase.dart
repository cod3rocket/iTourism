// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXLNSDmHFslmviz6Jqmg2ofLL27NO9WsM',
    appId: '1:788455666315:android:0b84bb8af2bf87664cda8e',
    messagingSenderId: '788455666315',
    projectId: 'cod3rocket-itourism',
    storageBucket: 'cod3rocket-itourism.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJhpaAf7iCQZ9q7j-GGBsiJNAI9qZ7lX0',
    appId: '1:788455666315:ios:6c7c444b0bcf4d8c4cda8e',
    messagingSenderId: '788455666315',
    projectId: 'cod3rocket-itourism',
    storageBucket: 'cod3rocket-itourism.appspot.com',
    iosClientId:
        '788455666315-886v6hctr8mo24f7oraesvpe3anb5i6n.apps.googleusercontent.com',
    iosBundleId: 'app.itourism.itourismMobile',
  );
}
