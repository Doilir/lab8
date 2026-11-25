import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign up')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person_add_alt, size: 56, color: Colors.teal),
            const SizedBox(height: 8),
            Text('Registration', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 18),
            const TextField(decoration: InputDecoration(labelText: 'Name', helperText: 'Enter your name')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Login', helperText: 'Enter your login')),
            const SizedBox(height: 12),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password', helperText: 'Enter your password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => const AlertDialog(title: Text('Message'), content: Text('Need to implement registration')),
              ),
              child: const Text('Register'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(onPressed: () => Navigator.pop(context), child: const Text('Back')),
          ],
        ),
      ),
    );
  }
}