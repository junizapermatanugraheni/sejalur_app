import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sijalur_app/src/features/authentication/screens/register/register_widget.dart';
import '../../../../constants/text_string.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<StatefulWidget> createState() => _StatefulWidgetState();
}

class _StatefulWidgetState extends State<StatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    MaxLengthValidator(12, errorText: 'password must not be more than 12 digits long'),
    PatternValidator(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$', errorText: 'passwords must have at least one special character')
  ]);

  void validate() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Register Berhasil')),);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Register Gagal')),);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.supervisor_account),
                prefixIconColor: Colors.orange,
                labelText: tRegisName,
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your name";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.supervisor_account),
                prefixIconColor: Colors.orange,
                labelText: tRegisUser,
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your username";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_rounded),
                prefixIconColor: Colors.orange,
                labelText: tRegisEmail,
              ),
              validator: MultiValidator(
                  [
                    RequiredValidator(errorText: "Required *"),
                    EmailValidator(errorText: "Not a valid email")
                  ]
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.orange,
                labelText: tRegisPass,
              ),
              validator: passwordValidator,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.orange,
                labelText: tRegisPassKonf,
              ),
              validator: passwordValidator,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.credit_card),
                prefixIconColor: Colors.orange,
                labelText: tRegisIdent,
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your number KTP";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                prefixIconColor: Colors.orange,
                labelText: tRegisTelp,
              ),
              validator: (value) {
                if (value!.isEmpty || !RegExp(r'^(?:[+62][1-9])?\d{10,12}$').hasMatch(value)){
                  return "Please enter you number phone";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.home_filled),
                prefixIconColor: Colors.orange,
                labelText: tRegisAlamat,
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter you address";
                }
                return null;
              },
            ),
            const RegisterWidget(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: validate,
                child: Text(tRegisButton.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}