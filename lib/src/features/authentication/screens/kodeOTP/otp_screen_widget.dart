import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sijalur_app/src/constants/sizes.dart';
import 'package:sijalur_app/src/features/authentication/screens/resetPass/reset_password_screen.dart';
import '../../../../constants/text_string.dart';

class KodeOTPForm extends StatelessWidget {
  const KodeOTPForm({super.key});

  get code => null;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 350.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(tKodeTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            const SizedBox(height: tDefaultSize - 10,),
            OtpTextField(
              numberOfFields: 5,
              borderColor: Colors.white,
              showFieldAsBox: true,
            ),
            const SizedBox(height: tDefaultSize,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordScreen())
                  );
                },
                child: Text(tKodeButton.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}