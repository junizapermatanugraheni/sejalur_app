import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../register/register_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_sharp),
                        prefixIconColor: Colors.orange,
                          labelText: tLabelUser,
                          hintText: tLabelUser,
                      )
                  ),
                  SizedBox(height: tFormHeight - 15),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.orange,
                      labelText: tLabelPass,
                      hintText: tLabelPass,
                      suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp),
                      ),
                    ),
                  ),
                  const SizedBox(height: tFormHeight - 30,),
                  Align(alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: Text(tLoginForgot)
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                      onPressed: (){},
                      child: Text(tLogin.toUpperCase(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => Get.to(() => const RegisterScreen()),
                          child: Text.rich(
                            TextSpan(
                                text: tLoginSubRegis,
                                style: TextStyle(color: Colors.black87),
                                children: [
                                  TextSpan(
                                    text: tLoginRegis,
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            )
        )
    );
  }
}