import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAsqObJmRjMnoqDuY64T_DnFzXn2j6bCLA",
            authDomain: "shop-check-yyuy97.firebaseapp.com",
            projectId: "shop-check-yyuy97",
            storageBucket: "shop-check-yyuy97.appspot.com",
            messagingSenderId: "206084623032",
            appId: "1:206084623032:web:aee3e7b0e086e21db9c24d"));
  } else {
    await Firebase.initializeApp();
  }
}
