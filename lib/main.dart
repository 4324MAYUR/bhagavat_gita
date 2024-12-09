import 'package:bhagavat_gita/routes/routes.dart';
import 'package:bhagavat_gita/view/provider/json_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main()
{
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => JsonProvider(),
        ),
      ],
      child: Consumer<JsonProvider>(
        builder: (BuildContext context, value, Widget? child) {
          value.getData();
          value.getShlokData();
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: AllRoutes.appRoutes,
            initialRoute: AllRoutes.home,
          );
        },
      ),
    );
  }
}
