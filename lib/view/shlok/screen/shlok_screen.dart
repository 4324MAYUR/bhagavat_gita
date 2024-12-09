import 'package:bhagavat_gita/view/provider/json_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShlokScreen extends StatefulWidget {
  const ShlokScreen({super.key});

  @override
  State<ShlokScreen> createState() => _ShlokScreenState();
}

class _ShlokScreenState extends State<ShlokScreen> {
  JsonProvider jR = JsonProvider();
  JsonProvider jW = JsonProvider();
  @override
  Widget build(BuildContext context) {
    jR = context.read<JsonProvider>();
    jW = context.watch<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange.shade800,
        title: jR.languageIndex == 0
            ? const Text(
          "श्लोक पृष्ठ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        )
            : const Text(
          "SHLOK PAGE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: PageView.builder(
        itemCount: jR.shlokData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.center,
            children: [
               Container(
                 width: double.infinity,
                 height: Checkbox.width*28,
                 padding: const EdgeInsets.all(20),
                 margin: const EdgeInsets.all(20),
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                   color: Colors.orange.shade800,
                   borderRadius: BorderRadius.circular(55),
                 ),
                 child: Column(
                      children: [
                        const SizedBox(height: 20),
                        jR.languageIndex ==0
                            ? Text(
                          "श्लोक संख्या: ${jR.shlokData[index]['verse_number']}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )
                            : Text(
                          "Shlok Number: ${jR.shlokData[jR.shlokIndex]['verse_number']}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),


                        const SizedBox(height: 20),

                        jR.languageIndex ==0
                            ? Text(
                          "श्लोक : ${jR.shlokData[index]['text']}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        )
                            : Text(
                          "Shlok :-   ${jR.shlokData[jR.shlokIndex]['transliteration']}",
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            jR.speakText(
                                "${jW.shlokData[index].engVerseText}");
                        },
                            icon:  const Icon(Icons.play_arrow),
                        ),
                      ],
                 ),
               ),
            ],
          );
      },
      ),
    );
  }
}
