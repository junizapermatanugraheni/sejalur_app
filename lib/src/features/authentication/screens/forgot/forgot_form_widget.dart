import 'package:flutter/material.dart';
import 'package:sijalur_app/src/constants/sizes.dart';
import 'package:sijalur_app/src/features/authentication/screens/kodeOTP/otp_screen.dart';
import '../../../../constants/text_string.dart';

class ForgotForm extends StatelessWidget {
  const ForgotForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 350.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(tForgotTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            const SizedBox(height: tDefaultSize - 10,),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_sharp),
                prefixIconColor: Colors.orange,
                labelText: tForgotEmail,
              ),
            ),
            const SizedBox(height: tDefaultSize,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const KodeOTPScreen()),
                  );
                },
                child: Text(tForgotButton.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}