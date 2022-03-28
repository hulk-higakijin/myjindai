// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxA8a9q5BEgmU32TWOWn7dNr6RJp13x5c',
    appId: '1:196172412250:android:b7b96b609707b4ef486f63',
    messagingSenderId: '196172412250',
    projectId: 'myjindai-25f98',
    storageBucket: 'myjindai-25f98.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzOlllmI6TEIemUj-zyWNwXnk7hhdbaOY',
    appId: '1:196172412250:ios:623316a4a0d5e353486f63',
    messagingSenderId: '196172412250',
    projectId: 'myjindai-25f98',
    storageBucket: 'myjindai-25f98.appspot.com',
    iosClientId: '196172412250-ee8vgfhu8j1eev8k3f5vcs23n96hkmqe.apps.googleusercontent.com',
    iosBundleId: 'com.example.myjindai',
  );
}
