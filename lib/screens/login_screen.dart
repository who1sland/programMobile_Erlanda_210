import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'signup_screen.dart';  // Pastikan Anda sudah membuat file signup_screen.dart

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 7, 91),  // Background sesuai gambar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome Text (rich text with individual color changes)
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome ',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                      ),
                    ),
                    TextSpan(
                      text: 'Back!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Email TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter E-mail',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Log In Button
              ElevatedButton(
                onPressed: () {
                  // Log in action
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.white,
                ),
                child: const Text('Log In'),
              ),
              const SizedBox(height: 20),

              // Google Log In Button
             ElevatedButton.icon(
                onPressed: () {
                  // Log in with Google action
                },
                icon: Image.asset('assets/images/Screenshot 2024-10-03 192922.png', height: 20),  // Add your Google logo asset here
                label: const Text(
                  'Login with Google',
                  style: TextStyle(color: Colors.white),  // Ubah warna teks menjadi putih
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color.fromARGB(255, 29, 59, 150),  // Background for Google button
                ),
              ),

              const SizedBox(height: 10),

              // Facebook Log In Button
              ElevatedButton.icon(
                onPressed: () {
                  // Log in with Facebook action
                },
                icon: const Icon(Icons.facebook, color: Color.fromARGB(255, 255, 255, 255)),
                label: const Text('Login with Facebook', style: TextStyle(color: Colors.white),),
                
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color(0xFF1877F2),  // Facebook color
                ),
              ),
              const SizedBox(height: 30),

              // Forgot Password
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'FORGOT ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: 'PASSWORD ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Sign Up Option
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: 'Sign Up',
                      style: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpScreen()),  // Navigate to Sign Up
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
