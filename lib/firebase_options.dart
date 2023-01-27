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
    apiKey: 'AIzaSyBywaVt_sAGipVOWZNAq4JV5aa36gfKedE',
    appId: '1:487111239842:web:76a57aafc90760f55bcffb',
    messagingSenderId: '487111239842',
    projectId: 'login-app-9b659',
    authDomain: 'login-app-9b659.firebaseapp.com',
    storageBucket: 'login-app-9b659.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNGXoOsZSlCkpYNcWVztO-LQAfTeFIopU',
    appId: '1:487111239842:android:aeafaaba54d6a2665bcffb',
    messagingSenderId: '487111239842',
    projectId: 'login-app-9b659',
    storageBucket: 'login-app-9b659.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqDgUpu26o2KamTW-9D16flCn8FhTFiew',
    appId: '1:487111239842:ios:84a5c374c68842c95bcffb',
    messagingSenderId: '487111239842',
    projectId: 'login-app-9b659',
    storageBucket: 'login-app-9b659.appspot.com',
    iosClientId: '487111239842-r7u7defk832nq4v81u8968iqti8q7ij1.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqDgUpu26o2KamTW-9D16flCn8FhTFiew',
    appId: '1:487111239842:ios:84a5c374c68842c95bcffb',
    messagingSenderId: '487111239842',
    projectId: 'login-app-9b659',
    storageBucket: 'login-app-9b659.appspot.com',
    iosClientId: '487111239842-r7u7defk832nq4v81u8968iqti8q7ij1.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterapp',
  );
}
