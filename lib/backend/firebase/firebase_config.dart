import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDuCPBTVirIfI8cJy5Y7luCwrLptR8UBqw",
            authDomain: "memberships-18l8vg.firebaseapp.com",
            projectId: "memberships-18l8vg",
            storageBucket: "memberships-18l8vg.appspot.com",
            messagingSenderId: "722559298094",
            appId: "1:722559298094:web:24ecc9800aab3770790dbf"));
  } else {
    await Firebase.initializeApp();
  }
}
