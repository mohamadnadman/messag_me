import 'package:flutter/material.dart';
import 'package:messagme/src/features/authentication/presentation/singup.dart';
import 'package:messagme/src/features/home/presentation/home_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const  BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 115, 79, 141),Color.fromARGB(255, 150, 94, 187),Color.fromARGB(255, 90, 47, 73),Color.fromARGB(255, 151, 130, 164),Color(0xff7F5D72),
        ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // logo
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/logo2.png'),
                    ),
                  ),
                ),     
                SizedBox(height: 30),         
                Text(
                  'Welcom to Our Community!',
                  style:TextStyle(color: Colors.white,fontSize: 20,
                ),),
                SizedBox(height: 10),
                Text(
                  '',
                  style: TextStyle(fontSize: 15, color: Colors.white54),
                ),
                SizedBox(height: 20),
                //email textfield
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
                  ),
                ),
                //password textfield
                SizedBox(height: 10),
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                //password forget
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeView()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(172, 15, 6, 25),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Sign in',
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
                // register now
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text(
                          'Register now',
                          style: TextStyle(color: Colors.white54),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingupScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                // or continue with
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
                SizedBox(height: 2),
                //Google , Facebook, Apple
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
                        height: 72),
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}









