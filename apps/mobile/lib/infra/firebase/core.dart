import 'package:firebase_core/firebase_core.dart';
import 'package:itourism_mobile/config/firebase.dart';

class FirebaseCore {
  static Future<FirebaseApp> initialize() async {
    final firebaseApp = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return firebaseApp;
  }
}
