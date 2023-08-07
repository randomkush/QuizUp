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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6I8_ftc2YMt2uBdVjtNowVHx6DwbmeOc',
    appId: '1:193744888213:android:883936408c99fd2e69d69c',
    messagingSenderId: '193744888213',
    projectId: 'quiz-app-3d5fb',
    storageBucket: 'quiz-app-3d5fb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIob8hjlXFZahnSzdLrzw4vH0PrmkT9Ew',
    appId: '1:193744888213:ios:fcc584f751f56b8069d69c',
    messagingSenderId: '193744888213',
    projectId: 'quiz-app-3d5fb',
    storageBucket: 'quiz-app-3d5fb.appspot.com',
    androidClientId: '193744888213-coqa2t4qmmone2ge8j231oana5en8jkq.apps.googleusercontent.com',
    iosClientId: '193744888213-rnur0ubujbrfqgj02ldjt1q2apuqbur6.apps.googleusercontent.com',
    iosBundleId: 'io.kushagra.quizapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBIob8hjlXFZahnSzdLrzw4vH0PrmkT9Ew',
    appId: '1:193744888213:ios:fcc584f751f56b8069d69c',
    messagingSenderId: '193744888213',
    projectId: 'quiz-app-3d5fb',
    storageBucket: 'quiz-app-3d5fb.appspot.com',
    androidClientId: '193744888213-coqa2t4qmmone2ge8j231oana5en8jkq.apps.googleusercontent.com',
    iosClientId: '193744888213-rnur0ubujbrfqgj02ldjt1q2apuqbur6.apps.googleusercontent.com',
    iosBundleId: 'io.kushagra.quizapp',
  );
}
