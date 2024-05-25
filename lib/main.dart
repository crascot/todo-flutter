import 'package:flitterproject/data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.cyanAccent),
          scaffoldBackgroundColor: Colors.cyan,
          primaryColor: Colors.blue,
          dividerTheme: const DividerThemeData(
              color: Colors.white, space: 30, thickness: 3),
          listTileTheme: const ListTileThemeData(iconColor: Colors.white),
          textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              bodySmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          useMaterial3: true),
      home: const MyHomePage(title: 'CRUD App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemCount: listCardBlock.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, i) => ListTile(
                // leading: SvgPicture.asset('assets/svg/cube.svg'),
                leading: const Icon(Icons.check_box_outline_blank_sharp),
                title: Text(
                  '$i',
                  style: theme.textTheme.bodyMedium,
                ),
                subtitle: Text(
                  'context',
                  style: theme.textTheme.bodySmall,
                ),
                trailing: const Icon(
                  Icons.arrow_right,
                  size: 40,
                ),
              )),
    );
  }
}
