import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shawarma_master/widgets/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}


// class TextToSpeechSample extends StatefulWidget {
//   const TextToSpeechSample({super.key});

//   @override
//   State<TextToSpeechSample> createState() => _TextToSpeechSampleState();
// }

// class _TextToSpeechSampleState extends State<TextToSpeechSample> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }