import 'package:flutter/material.dart';
import 'package:sijalur_app/src/constants/sizes.dart';
import '../../../../constants/text_string.dart';

class ResetForm extends StatelessWidget {
  const ResetForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 250.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(tForgotTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            const SizedBox(height: tDefaultSize - 10,),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.orange,
                labelText: tResetPass,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.orange,
                labelText: tResetPassKonf,
              ),
            ),
            const SizedBox(height: tDefaultSize,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {},
                child: Text(tResetButton.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}