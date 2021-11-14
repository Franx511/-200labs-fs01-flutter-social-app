import 'package:flutter/material.dart';
import 'package:flutter_training_2/pages/message_list.dart';
import 'package:flutter_training_2/util/theme_config.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social Network App', // Need a config file
        theme: themeData(ThemeConfig.darkTheme),
        home: const MySocialApp());
  }

  ThemeData themeData(ThemeData theme) {
    return theme.copyWith(
      textTheme: GoogleFonts.sourceSansProTextTheme(
        theme.textTheme,
      ),
    );
  }
}

class MySocialApp extends StatefulWidget {
  const MySocialApp({Key? key}) : super(key: key);

  @override
  _MySocialAppState createState() => _MySocialAppState();
}

class _MySocialAppState extends State<MySocialApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MessageListPage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: const Icon(Icons.message_rounded),
              label: 'Message List',
              backgroundColor: Colors.blue[800]),
          BottomNavigationBarItem(
              icon: const Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.blue[800]),
          BottomNavigationBarItem(
              icon: const Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.blue[800]),
          BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.blue[800]),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow[500],
        onTap: _onItemTapped,
      ),
    );
  }
}
