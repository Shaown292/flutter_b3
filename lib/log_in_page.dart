import 'package:flutter/material.dart';
import 'package:flutter_b3/widgets/custom_text_field.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Text(
                "CHOLEN KINI",
                style: TextStyle(fontSize: 36, color: Colors.deepOrange),
              ),
              SizedBox(height: 50),
              CustomTextField(
                controller: emailController,
                hintText: "Enter your email",
                prefixWidget: Icon(Icons.email_outlined),
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: passwordController,
                hintText: 'Enter your password',
                obscureText: true,
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  _showDialogue(context);
                },
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){
                  if(emailController.text.toString() == "kzshaown" && passwordController.text.toString() == "1234"){
                    return debugPrint("Success");
                  }
                  else
                    {
                      debugPrint("Error");
                    }
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showDialogue(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alert'),
        content: Text('This is a simple alert dialog.'),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        ],
      );
    },
  );
}
