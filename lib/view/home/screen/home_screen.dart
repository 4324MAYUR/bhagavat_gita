import 'package:bhagavat_gita/main.dart';
import 'package:bhagavat_gita/view/provider/json_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  JsonProvider jR = JsonProvider();
  JsonProvider jW = JsonProvider();
  @override
  Widget build(BuildContext context) {

    jR = context.read<JsonProvider>();
    jW = context.watch<JsonProvider>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("HOME"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: jW.chapter.length,
                itemBuilder: (context, index) {
                  final chapter = jW.chapter[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User ID: ${chapter['chapter_number']}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
