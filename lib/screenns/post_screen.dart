import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('নতুন পোস্ট'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'শিরোনাম'),
                onSaved: (value) => _title = value ?? '',
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'বিস্তারিত'),
                onSaved: (value) => _description = value ?? '',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _formKey.currentState?.save();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('পোস্ট সংরক্ষণ করা হয়েছে')),
                  );
                },
                child: const Text('সংরক্ষণ করুন'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
