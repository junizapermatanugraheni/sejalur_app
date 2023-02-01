import 'package:flutter/material.dart';
import 'package:sijalur_app/src/features/authentication/screens/register/register_widget.dart';
import '../../../../constants/text_string.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 120.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.supervisor_account),
                prefixIconColor: Colors.orange,
                labelText: tRegisUser,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_rounded),
                prefixIconColor: Colors.orange,
                labelText: tRegisEmail,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.orange,
                labelText: tRegisPass,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.orange,
                labelText: tRegisPassKonf,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.credit_card),
                prefixIconColor: Colors.orange,
                labelText: tRegisIdent,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                prefixIconColor: Colors.orange,
                labelText: tRegisTelp,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.home_filled),
                prefixIconColor: Colors.orange,
                labelText: tRegisAlamat,
              ),
            ),
            RegisterWidget(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {},
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