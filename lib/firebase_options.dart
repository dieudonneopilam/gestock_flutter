// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDiCjKz4e2kpSWgH0ac6oAfO9eFf2Ahh48',
    appId: '1:1008246773962:web:f395ad4865500637cdfc33',
    messagingSenderId: '1008246773962',
    projectId: 'gestock-6d5e4',
    authDomain: 'gestock-6d5e4.firebaseapp.com',
    storageBucket: 'gestock-6d5e4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8_OTjyVvFQgOgw3l8Gia9f8698RR-75I',
    appId: '1:1008246773962:android:3d025dd6734a6ec0cdfc33',
    messagingSenderId: '1008246773962',
    projectId: 'gestock-6d5e4',
    storageBucket: 'gestock-6d5e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpV3hl8lXudApH3-Yejatl47kQty4VpVo',
    appId: '1:1008246773962:ios:3ff12bf483fe4170cdfc33',
    messagingSenderId: '1008246773962',
    projectId: 'gestock-6d5e4',
    storageBucket: 'gestock-6d5e4.appspot.com',
    iosClientId: '1008246773962-eq1m1ule31483rj0mqr87ambvf69cm3s.apps.googleusercontent.com',
    iosBundleId: 'com.example.stockManager',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpV3hl8lXudApH3-Yejatl47kQty4VpVo',
    appId: '1:1008246773962:ios:3ff12bf483fe4170cdfc33',
    messagingSenderId: '1008246773962',
    projectId: 'gestock-6d5e4',
    storageBucket: 'gestock-6d5e4.appspot.com',
    iosClientId: '1008246773962-eq1m1ule31483rj0mqr87ambvf69cm3s.apps.googleusercontent.com',
    iosBundleId: 'com.example.stockManager',
  );
}
