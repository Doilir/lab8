import 'package:flutter/material.dart';
import 'reset_password_screen.dart';
import 'signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  void _msg(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(title: const Text('Message'), content: Text(text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 36,
              backgroundColor: Color(0xFFE0F2F1),
              child: Icon(Icons.account_circle, size: 54, color: Colors.teal),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(labelText: 'Login', helperText: 'Enter your login'),
            ),
            const SizedBox(height: 14),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password', helperText: 'Enter your password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _msg(context, 'Need to implement login'),
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SignupScreen())),
              child: const Text('Sign up'),
            ),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ResetPasswordScreen())),
              child: const Text('Forgot password?'),
            ),
          ],
        ),
      ),
    );
  }
}