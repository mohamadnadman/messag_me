import 'package:flutter/material.dart';
import 'package:messagme/src/features/authentication/presentation/succesemail_screen.dart';

class EmailConfirm extends StatefulWidget {
  const EmailConfirm({super.key});

  @override
  _EmailConfirmState createState() => _EmailConfirmState();
}

class _EmailConfirmState extends State<EmailConfirm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Navigate to the success screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SuccEmailScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 115, 79, 141),
            Color.fromARGB(255, 150, 94, 187),
            Color.fromARGB(255, 90, 47, 73),
            Color.fromARGB(255, 151, 130, 164),
            Color(0xff7F5D72),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // logo
                  children: [
                    Container(
                      width: 100,
                      height: 200,
                      child: const Center(
                        child: Image(
                          image: AssetImage('assets/images/logo2.png'),
                        ),
                      ),
                    ),
                    SizedBox(height: 70),
                    // Text "Confirm your Email"
                    Text(
                      'Confirm your Email',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Email TextFormField
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                            ),
                            validator: _validateEmail,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    // Text "Confirm Your Email to be One of Our Family"
                    Center(
                      child: Text(
                        'Confirm Your Email to be One of Our Family.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(137, 86, 238, 4),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    // Button "Continue"
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: InkWell(
                        onTap: _submitForm,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(172, 11, 4, 20),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 90),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
