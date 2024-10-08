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
    apiKey: 'AIzaSyB0-lLNNr-Ixieb8l877Ysm0uxXlJ7XpfI',
    appId: '1:354808192907:web:921411efe9f534b9c2198e',
    messagingSenderId: '354808192907',
    projectId: 'up-homes-72ygjg',
    authDomain: 'up-homes-72ygjg-61fd9.firebaseapp.com',
    storageBucket: 'up-homes-72ygjg.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBULX-lnVLNb0MVpw6qDmu73xSZHxJe0P8',
    appId: '1:354808192907:android:6bdf03744f3f72c3c2198e',
    messagingSenderId: '354808192907',
    projectId: 'up-homes-72ygjg',
    storageBucket: 'up-homes-72ygjg.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5uE4_9rHE9p8YnpeSpw1HxKAWc4rkn-k',
    appId: '1:354808192907:ios:65668186ff6bedd0c2198e',
    messagingSenderId: '354808192907',
    projectId: 'up-homes-72ygjg',
    storageBucket: 'up-homes-72ygjg.appspot.com',
    iosBundleId: 'com.example.vegetable',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5uE4_9rHE9p8YnpeSpw1HxKAWc4rkn-k',
    appId: '1:354808192907:ios:65668186ff6bedd0c2198e',
    messagingSenderId: '354808192907',
    projectId: 'up-homes-72ygjg',
    storageBucket: 'up-homes-72ygjg.appspot.com',
    iosBundleId: 'com.example.vegetable',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB0-lLNNr-Ixieb8l877Ysm0uxXlJ7XpfI',
    appId: '1:354808192907:web:abe794866e72cf14c2198e',
    messagingSenderId: '354808192907',
    projectId: 'up-homes-72ygjg',
    authDomain: 'up-homes-72ygjg-61fd9.firebaseapp.com',
    storageBucket: 'up-homes-72ygjg.appspot.com',
  );
}
