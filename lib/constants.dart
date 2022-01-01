import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:wishlist/Authentication/Controllers/authentication_controller.dart';

class Constants {
  static final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();
  static const Color customGreen = Color.fromRGBO(56, 134, 132, 1);

  static const Color gradientBlue = Color.fromRGBO(82, 91, 236, 1);
  static const Color gradientPurple = Color.fromRGBO(129, 84, 202, 1);
  static const Color gradientPink = Color.fromRGBO(196, 76, 151, 1);


}
