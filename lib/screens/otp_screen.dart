import 'package:flutter/material.dart';

import '../widgets/otp_form.dart';

class OtpScreen extends StatelessWidget {

  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Please enter the OTP code sent to you by E-Mail"),
                const OtpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
