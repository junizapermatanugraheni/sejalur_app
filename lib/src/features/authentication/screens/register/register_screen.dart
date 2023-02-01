import 'package:flutter/material.dart';
import 'package:sijalur_app/src/features/authentication/screens/register/register_form_widget.dart';
// import 'package:sijalur_app/src/constants/text_string.dart';

// import 'package:sijalur_app/src/features/authentication/screens/register/register_widget.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Registrasi Penumpang", style: TextStyle(color: Colors.black87)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 105,
                      height: 105,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 5,
                                color: Colors.black.withOpacity(0.1)
                            ),
                          ],
                          shape: BoxShape.circle
                      ),
                    ),
                  ),
                  Container(
                    child: RegisterForm(),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
