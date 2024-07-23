import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBb2j3EAXJBZy6H5TvundxH-ofO9bZFtyo",
            authDomain: "my-pro-f0627.firebaseapp.com",
            projectId: "my-pro-f0627",
            storageBucket: "my-pro-f0627.appspot.com",
            messagingSenderId: "470889333338",
            appId: "1:470889333338:web:1817bde2eaf95e6faf4e63"));
  } else {
    await Firebase.initializeApp();
  }
}
