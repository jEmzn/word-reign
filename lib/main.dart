import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app/router/app_router.dart';
// import 'app/theme/app_theme.dart';


void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(WordReignApp());
}

class WordReignApp extends StatelessWidget {
  const WordReignApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
    brightness: MediaQuery.platformBrightnessOf(context),
    seedColor: Colors.indigo
    );
    return MaterialApp.router(
      title: 'Word Reign',
      // theme: ThemeData(
      //   colorScheme: colorScheme,
      // ),
       // <-- อ้างอิง router จาก app/router/
      routerConfig: appRouter,
    );
  }
}

class HomeHub extends StatelessWidget {
  const HomeHub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeHub"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          const Text('Home Page'),
          ElevatedButton(onPressed: () => context.go('/farm'),
          child: const Text('Farm')),
          ElevatedButton(onPressed: () => context.go('/boss'),
          child: const Text('Boss')),
          ElevatedButton(onPressed: () => context.go('/lab'),
          child: const Text('Lab')),
          ElevatedButton(onPressed: () => context.go('/reward'),
          child: const Text('Reward')),
        ],
      ),
    );

  }
}