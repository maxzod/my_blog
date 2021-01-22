import 'package:flutter/material.dart';
import 'package:my_blog/views/page.template.dart';

class ContactPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlogPageTemplate(
      body: Card(
        color: Color(0xFF30475e),
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.10,
          vertical: size.height * 0.20,
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
              vertical: size.height * 0.05,
            ),
            // child:
            //  Column(
            //   children: [
            //     MainInputField(
            //       controller: nameController,
            //       labelText: 'name',
            //     ),
            //     MainInputField(
            //       controller: emailController,
            //       labelText: 'email',
            //     ),
            //     MainInputField(
            //       controller: nameController,
            //       labelText: 'message',
            //       minLines: 5,
            //       keyboardType: TextInputType.multiline,
            //     ),
            //     Align(
            //       alignment: Alignment.bottomRight,
            //       child: MaterialButton(
            //         onPressed: () {},
            //         color: BlogColors.buttonsColor,
            //         child: Text(
            //           'SEND',
            //           style:
            //               TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
