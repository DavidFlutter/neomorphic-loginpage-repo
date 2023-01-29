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
    apiKey: 'AIzaSyCKjn5vY4onSQq0MngjipKX8oQFLnpRjXo',
    appId: '1:7550817063:web:6a67e323582679f59e8f02',
    messagingSenderId: '7550817063',
    projectId: 'my-neo-login-page',
    authDomain: 'my-neo-login-page.firebaseapp.com',
    storageBucket: 'my-neo-login-page.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxe1XtW2wB92IVKDF08eVfe9Z1flITxlM',
    appId: '1:7550817063:android:e1fb5020e5c3f63a9e8f02',
    messagingSenderId: '7550817063',
    projectId: 'my-neo-login-page',
    storageBucket: 'my-neo-login-page.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2C8KS_1cj8NTxSDOWtq7JDGqKMxvOFQc',
    appId: '1:7550817063:ios:4c3cf73d9f55ff4a9e8f02',
    messagingSenderId: '7550817063',
    projectId: 'my-neo-login-page',
    storageBucket: 'my-neo-login-page.appspot.com',
    iosClientId: '7550817063-k85lu31nipcju37cqp2i3afnae14fmo4.apps.googleusercontent.com',
    iosBundleId: 'com.example.neoFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD2C8KS_1cj8NTxSDOWtq7JDGqKMxvOFQc',
    appId: '1:7550817063:ios:4c3cf73d9f55ff4a9e8f02',
    messagingSenderId: '7550817063',
    projectId: 'my-neo-login-page',
    storageBucket: 'my-neo-login-page.appspot.com',
    iosClientId: '7550817063-k85lu31nipcju37cqp2i3afnae14fmo4.apps.googleusercontent.com',
    iosBundleId: 'com.example.neoFlutter',
  );
}