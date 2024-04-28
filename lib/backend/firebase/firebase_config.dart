import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAU9YQCom1otqEuVc5Xd1vyac-c-EWzJTc",
            authDomain: "steppies-c8fd8.firebaseapp.com",
            projectId: "steppies-c8fd8",
            storageBucket: "steppies-c8fd8.appspot.com",
            messagingSenderId: "997331435037",
            appId: "1:997331435037:web:ca0f5bcfcebc47152610f4",
            measurementId: "G-LD302HJSNN"));
  } else {
    await Firebase.initializeApp();
  }
}
