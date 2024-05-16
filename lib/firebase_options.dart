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
    apiKey: 'AIzaSyCXiVf1uhgP9iMvhZjjoWisFjBXf4A8MFU',
    appId: '1:458397260180:web:b6039451c84c8f5e5e9781',
    messagingSenderId: '458397260180',
    projectId: 'yourtracks-c11cf',
    authDomain: 'yourtracks-c11cf.firebaseapp.com',
    storageBucket: 'yourtracks-c11cf.appspot.com',
    measurementId: 'G-N3CG7YZEXW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBUhFG3rrO6Ik5eufID4fTT0Ks5nzJpJpQ',
    appId: '1:458397260180:android:518ef7cd7d8f45cc5e9781',
    messagingSenderId: '458397260180',
    projectId: 'yourtracks-c11cf',
    storageBucket: 'yourtracks-c11cf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByWP-ImL9J4meW4XQ--hKxIRo4IzXVCMw',
    appId: '1:458397260180:ios:574f26b111ce284e5e9781',
    messagingSenderId: '458397260180',
    projectId: 'yourtracks-c11cf',
    storageBucket: 'yourtracks-c11cf.appspot.com',
    iosBundleId: 'com.example.yourTracks',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyByWP-ImL9J4meW4XQ--hKxIRo4IzXVCMw',
    appId: '1:458397260180:ios:574f26b111ce284e5e9781',
    messagingSenderId: '458397260180',
    projectId: 'yourtracks-c11cf',
    storageBucket: 'yourtracks-c11cf.appspot.com',
    iosBundleId: 'com.example.yourTracks',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCXiVf1uhgP9iMvhZjjoWisFjBXf4A8MFU',
    appId: '1:458397260180:web:3a863318426f9a185e9781',
    messagingSenderId: '458397260180',
    projectId: 'yourtracks-c11cf',
    authDomain: 'yourtracks-c11cf.firebaseapp.com',
    storageBucket: 'yourtracks-c11cf.appspot.com',
    measurementId: 'G-4TZJL1HH7R',
  );
}
