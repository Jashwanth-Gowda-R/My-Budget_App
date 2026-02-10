// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/legacy.dart';

// final viewModel = ChangeNotifierProvider.autoDispose((ref) => ViewModel());

// // class ViewModel extends ChangeNotifier {
// //   bool isSignedIn = false;
// //   final _auth = FirebaseAuth.instance;

// //   //Check if Signed In
// //   Future<void> isLoggedIn() async {
// //     _auth.authStateChanges().listen((User? user) {
// //       if (user == null) {
// //         isSignedIn = false;
// //       } else {
// //         isSignedIn = true;
// //       }
// //     });
// //     notifyListeners();
// //   }
// // }

// class ViewModel extends ChangeNotifier {
//   bool isSignedIn = false;
//   late final StreamSubscription<User?> _sub;

//   ViewModel() {
//     _sub = FirebaseAuth.instance.authStateChanges().listen((user) {
//       isSignedIn = user != null;
//       notifyListeners();
//     });
//   }

//   @override
//   void dispose() {
//     _sub.cancel();
//     super.dispose();
//   }
// }
