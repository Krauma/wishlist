import 'package:firebase_core/firebase_core.dart';
import 'package:wishlist/Authentication/Controllers/authentication_controller.dart';

class Constants {
  static final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();
}
