// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBeNQyGib7PYqBDY0Eh1vfevkRyPPCmm9Q',
    appId: '1:900144221578:web:1a4a5a93bec1b9bcc80c73',
    messagingSenderId: '900144221578',
    projectId: 'project00-3d2e9',
    authDomain: 'project00-3d2e9.firebaseapp.com',
    storageBucket: 'project00-3d2e9.appspot.com',
    measurementId: 'G-8020NZVL4N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAbuKRVYRv0R-LyNJdKJBcNJ61fgLTrPU',
    appId: '1:900144221578:android:e20f1b1842429e37c80c73',
    messagingSenderId: '900144221578',
    projectId: 'project00-3d2e9',
    storageBucket: 'project00-3d2e9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCB4o9REw8O73iLwilFix8u1BarkQvFU5k',
    appId: '1:900144221578:ios:3e95da3e409fcb2ec80c73',
    messagingSenderId: '900144221578',
    projectId: 'project00-3d2e9',
    storageBucket: 'project00-3d2e9.appspot.com',
    iosBundleId: 'com.example.newapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCB4o9REw8O73iLwilFix8u1BarkQvFU5k',
    appId: '1:900144221578:ios:3e95da3e409fcb2ec80c73',
    messagingSenderId: '900144221578',
    projectId: 'project00-3d2e9',
    storageBucket: 'project00-3d2e9.appspot.com',
    iosBundleId: 'com.example.newapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBeNQyGib7PYqBDY0Eh1vfevkRyPPCmm9Q',
    appId: '1:900144221578:web:93f97d3298486b54c80c73',
    messagingSenderId: '900144221578',
    projectId: 'project00-3d2e9',
    authDomain: 'project00-3d2e9.firebaseapp.com',
    storageBucket: 'project00-3d2e9.appspot.com',
    measurementId: 'G-SXV982GPDY',
  );
}
