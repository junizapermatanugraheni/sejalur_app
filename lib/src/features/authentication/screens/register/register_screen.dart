import 'package:flutter/material.dart';
import 'package:sijalur_app/src/features/authentication/screens/register/register_form_widget.dart';
// import 'package:sijalur_app/src/features/authentication/screens/register/register_form_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text("Registrasi Penumpang", style: TextStyle(color: Colors.black87)),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                                ))),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Colors.green,
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                const RegisterForm(),
              ],
            ),
          ),
        ),
        // body: SingleChildScrollView(
        //   child: Container(
        //     padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        //       child: Column(
        //         children: [
        //           Container(
        //             width: 130,
        //             height: 130,
        //             decoration: BoxDecoration(
        //               border: Border.all(width: 4, color: Colors.white),
        //               boxShadow: [
        //                 BoxShadow(
        //                   spreadRadius: 2,
        //                   blurRadius: 10,
        //                   color: Colors.black.withOpacity(0.1),
        //                 ),
        //               ],
        //               shape: BoxShape.circle,
        //               image: const DecorationImage(
        //                 fit: BoxFit.cover,
        //                 image: NetworkImage(
        //                     'https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg'
        //                 ),
        //               ),
        //             ),
        //           ),
        //            const RegisterForm(),
        //         ],
        //       ),
        //     ),
        //   ),
        ),
    );
  }
}
