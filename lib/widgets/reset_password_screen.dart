import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forgot password')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_reset, size: 56, color: Colors.teal),
            const SizedBox(height: 8),
            Text('Password recovery', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 18),
            const TextField(
              decoration: InputDecoration(labelText: 'Email or Login', helperText: 'Enter your email or login'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => const AlertDialog(title: Text('Message'), content: Text('Need to implement reset')),
              ),
              child: const Text('Reset password'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(onPressed: () => Navigator.pop(context), child: const Text('Back')),
          ],
        ),
      ),
    );
  }
}