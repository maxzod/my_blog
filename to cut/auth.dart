// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService {
//   final _auth = FirebaseAuth.instance;
//   User get user => _auth.currentUser;
//   bool get loggendIn => user != null;
//   String get uid => user?.uid;
//   String get email => user.email;

//   Future login(String email, String password) async {
//     try {
//       await _auth.signInWithEmailAndPassword(email: email, password: password);
//     } catch (e) {
//       return Future.error(e);
//     }
//   }
// }
