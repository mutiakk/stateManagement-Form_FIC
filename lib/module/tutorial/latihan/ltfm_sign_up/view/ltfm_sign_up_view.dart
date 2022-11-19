import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltfm_sign_up_controller.dart';

class LtfmSignUpView extends StatefulWidget {
  const LtfmSignUpView({Key? key}) : super(key: key);

  Widget build(context, LtfmSignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSignUp"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                value: "demo@gmail.com",
                label: "Email",
                hint: "Your email",
                onChanged: (value) {},
              ),

              QTextField(
                value: "123456",
                label: "Password",
                hint: "Your password",
                obscure: true,
                onChanged: (value) {},
              ),

              QTextField(
                value: "123456",
                label: "Confirm Password",
                hint: "Your password",
                obscure: true,
                onChanged: (value) {},
              ),

              ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () => controller.doLogin(),
              ),

              //! 1. Buatlah textfield email
              //! 2. Buatlah textfield password
              //! 3. Buatlah textfield confirm password
              //! 4. Buat sebuah tombol,
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSignUpView> createState() => LtfmSignUpController();
}
