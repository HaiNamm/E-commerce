import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDurqJcflRPv6OEQ2sEvQOqsh63JqsXpoY",
            authDomain: "ff-enterprise-ecomm.firebaseapp.com",
            projectId: "ff-enterprise-ecomm",
            storageBucket: "ff-enterprise-ecomm.appspot.com",
            messagingSenderId: "984148687140",
            appId: "1:984148687140:web:f43b11867f35bed5d6dbb1",
            measurementId: "G-XY360VB52P"));
  } else {
    await Firebase.initializeApp();
  }
}
