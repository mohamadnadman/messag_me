
import 'package:flutter/material.dart';
import 'package:messagme/src/features/authentication/presentation/email_confirm.dart';
class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return 
      Container(
      decoration: const  BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 115, 79, 141),
          Color.fromARGB(255, 150, 94, 187),
          Color.fromARGB(255, 90, 47, 73)
          ,Color.fromARGB(255, 151, 130, 164),
          Color(0xff7F5D72),
        ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          top: true,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // text welcome
                  Padding(
                    padding: EdgeInsets.all(27.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Create your account',
                          style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ),
                  //name   vorname
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Color.fromARGB(0, 5, 4, 4),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Full name',
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 10),
                  //email
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Color.fromARGB(0, 5, 4, 4),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 10),
                  // phone number
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Color.fromARGB(0, 5, 4, 4),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone Number',
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 10),
       // password
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Color.fromARGB(0, 5, 4, 4),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 10),
                  //confirm password
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Color.fromARGB(0, 5, 4, 4),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Confirm Password',
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 20),
                  // Sign in
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: InkWell(
                      onTap: () {
                        //  Navigator => Email-Confirm
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EmailConfirm()),
                              );
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(172, 7, 6, 7),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  // or with facebook Google
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  //Google , Facebook
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Google
                        Image.asset(
                          'assets/images/image 5.png',
                          height: 72,
                        ),
                        // Facebook
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/images/image 6.png',
                          height: 72,
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/images/image 7.png',
                          height: 72,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}






