import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictaetoe/provider/room_data_provider.dart';
import 'package:tictaetoe/screens/game_screen.dart';
import 'package:tictaetoe/utils/colors.dart';
import 'package:tictaetoe/screens/join_room_screen.dart';
import 'package:tictaetoe/screens/main_menu_screen.dart';
import 'package:tictaetoe/screens/create_room_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RoomDataProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
        ),
        routes: {
          MainMenuScreen.routeName: (context) => const MainMenuScreen(),
          JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
          CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
          GameScreen.routeName: (context) => const GameScreen(),
        },
        initialRoute: MainMenuScreen.routeName,
      ),
    );
  }
}
