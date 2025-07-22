import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBUoogeGQujOJw-q6LIfjy45DiDhfBkLCM",
            authDomain: "sport-xchange-6t3twk.firebaseapp.com",
            projectId: "sport-xchange-6t3twk",
            storageBucket: "sport-xchange-6t3twk.appspot.com",
            messagingSenderId: "753764308154",
            appId: "1:753764308154:web:7370723077b307e90e5e83"));
  } else {
    await Firebase.initializeApp();
  }
}
