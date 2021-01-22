// import 'package:flutter/material.dart';
// import 'package:my_blog/services/auth.dart';
// import 'package:my_blog/views/page.template.dart';
// import 'package:my_blog/widgets/header.item.dart';

// class SignInPage extends StatefulWidget {
//   @override
//   _SignInPageState createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> {
//   bool loading = false;
//   final TextEditingController email =
//       TextEditingController(text: 'maxzod66@gmail.com');
//   final TextEditingController password =
//       TextEditingController(text: 'maxzod66@gmail.com');

//   @override
//   void dispose() {
//     email.dispose();
//     password.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return BlogPageTemplate(
//       body: Card(
//         color: Color(0xFF30475e),
//         margin: EdgeInsets.symmetric(
//           horizontal: size.width * 0.10,
//           vertical: size.height * 0.20,
//         ),
//         child: Center(
//           child: loading
//               ? CircularProgressIndicator()
//               : Container(
//                   margin: EdgeInsets.symmetric(
//                     horizontal: size.width * 0.03,
//                     vertical: size.height * 0.05,
//                   ),
//                   child: Column(
//                     children: [
//                       Text(AuthService().uid ?? "not logged in"),
//                       Text(
//                         'sign in',
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       TextField(
//                         controller: email,
//                         decoration: InputDecoration(
//                           labelText: 'email',
//                           labelStyle: TextStyle(fontSize: 20),
//                         ),
//                       ),
//                       TextField(
//                         controller: password,
//                         decoration: InputDecoration(
//                           labelText: 'password',
//                           labelStyle: TextStyle(fontSize: 20),
//                         ),
//                       ),
//                       SizedBox(height: 50),
//                       HeaderItem(
//                         title: 'login',
//                         onClick: () async {
//                           setState(() {
//                             loading = true;
//                           });
//                           try {
//                             await AuthService()
//                                 .login(email.text, password.text);
//                             showDialog(
//                                 context: context,
//                                 child: Dialog(
//                                   child: Text(AuthService().uid),
//                                 ));
//                           } catch (e) {
//                             AuthService().login(email.text, password.text);
//                             showDialog(
//                                 context: context,
//                                 child: Dialog(
//                                   child: Text(e.toString()),
//                                 ));
//                           } finally {
//                             setState(() {
//                               loading = false;
//                             });
//                           }
//                         },
//                         route: '',
//                       )
//                     ],
//                   ),
//                 ),
//         ),
//       ),
//     );
//   }
// }
