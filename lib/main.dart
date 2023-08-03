import 'package:darkmode/teste_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DarkModeProvider(),
      child: Consumer<DarkModeProvider>(
        builder: (context, darkModeProvider, _) {
          return MaterialApp(
            theme: darkModeProvider.isDarkMode
                ? ThemeData.dark()
                : ThemeData.light(),
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('App com Modo Escuro'),
      ),
      body:  Center(
        child: Column(
          children: [
            const Text('Conteúdo do App'),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const testePage(),
                    ),
                  );
                },
                child: const Text("Ir para teste")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          darkModeProvider.toggleDarkMode();
        },
        child: const Icon(Icons.lightbulb),
      ),
    );
  }
}
