import 'package:flutter/material.dart';
import 'post_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lost & Found Check'),
      ),
      body: const Center(
        child: Text(
          'আপনার আমানত আমরা ফিরিয়ে আনতে অক্লান্ত পরিশ্রম করে যাব ইনশাআল্লাহ',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PostScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
