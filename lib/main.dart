import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(title: "Home Page");
      },
      routes: const <RouteBase>[],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'Home Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
          child: CircleAvatar(
            backgroundColor: Colors.black12,
          ),
        ),
        leadingWidth: 60.0,
        toolbarHeight: 80.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5.0,
                        spreadRadius: 3.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black,
                  ),
                  child: const SizedBox(
                    width: 160,
                    height: 125,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                            child: Text(
                              'Who is at Home?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Text(
                            '• Shubham',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '• Bhavishya',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '• Rahil',
                            style: TextStyle(color: Colors.white),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5.0,
                        spreadRadius: 3.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black,
                  ),
                  child: const SizedBox(
                    width: 160,
                    height: 125,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                            child: Text(
                              'Who is at Home?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Text(
                            '• Shubham',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '• Bhavishya',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '• Rahil',
                            style: TextStyle(color: Colors.white),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
