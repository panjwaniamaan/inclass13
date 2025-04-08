import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'test-api-key',
    appId: '1:1234567890:android:abc123fakeappid',
    messagingSenderId: '1234567890',
    projectId: 'test-project-id',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'test-api-key-ios',
    appId: '1:1234567890:ios:def456fakeappid',
    messagingSenderId: '1234567890',
    projectId: 'test-project-id',
    iosBundleId: 'com.example.flutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'test-api-key-macos',
    appId: '1:1234567890:macos:ghi789fakeappid',
    messagingSenderId: '1234567890',
    projectId: 'test-project-id',
    iosBundleId: 'com.example.flutterApp.macOS',
  );
}
