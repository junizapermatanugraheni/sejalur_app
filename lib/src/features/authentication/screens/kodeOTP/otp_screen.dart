import 'package:flutter/material.dart';
import 'package:sijalur_app/src/constants/image_string.dart';
import 'package:sijalur_app/src/features/authentication/screens/kodeOTP/otp_screen_widget.dart';

class KodeOTPScreen extends StatelessWidget{
  const KodeOTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Kode OTP", style: TextStyle(color: Colors.black87)),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
        child: Stack(
          children: [
            Center(
              child: Column(
                children: const [
                  Image(image: AssetImage(tKodeOTPScreen)),
                ],
              ),
            ),
            const KodeOTPForm(),
          ],
        ),
      ),
    );
  }
}