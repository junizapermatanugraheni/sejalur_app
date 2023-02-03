import 'package:flutter/material.dart';
import 'package:sijalur_app/src/constants/image_string.dart';
import 'package:sijalur_app/src/features/authentication/screens/forgot/forgot_password_screen.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../register/register_screen.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key,});
  @override

  State<StatefulWidget> createState() => _StatefulWidgetState();
}
class _StatefulWidgetState extends State<StatefulWidget>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validate() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login Berhasil')),);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login Gagal')),);
    }
  }
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    MaxLengthValidator(12, errorText: 'password must not be more than 12 digits long'),
    PatternValidator(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$', errorText: 'passwords must have at least one special character')
  ]);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_sharp),
                        prefixIconColor: Colors.orange,
                        labelText: tLabelUser,
                        hintText: tLabelUser,
                      ),
                    validator: MultiValidator(
                      [
                        RequiredValidator(errorText: "Required *"),
                        EmailValidator(errorText: "Not a valid email")
                      ]
                    ),
                  ),
                  const SizedBox(height: tFormHeight - 15),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.orange,
                      labelText: tLabelPass,
                      hintText: tLabelPass,
                      suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp),
                      ),
                    ),
                    validator: passwordValidator,
                  ),
                  const SizedBox(height: tFormHeight - 30,),
                  Align(alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                    }, child: const Text(tLoginForgot)
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                      onPressed: validate,
                      child: Text(tLogin.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen(),)
                            );
                          },
                          child: const Text.rich(
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
                  SizedBox(
                    width: 350,
                    height: 45,
                    child: OutlinedButton.icon(
                      icon: const Image(image: AssetImage(tLogoGoogle), width: 20.0,),
                      onPressed: (){},
                      label: const Text('Login with Google', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ]
            )
        )
    );
  }
}




