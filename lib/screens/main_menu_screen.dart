import 'package:flutter/material.dart';
import 'package:tictaetoe/responsive/responsive.dart';
import 'package:tictaetoe/screens/create_room_screen.dart';
import 'package:tictaetoe/screens/join_room_screen.dart';
import 'package:tictaetoe/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({Key? key}) : super(key: key);

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTap: () => createRoom(context),
              text: 'Create Room',
            ),
            const SizedBox(height: 20),
            CustomButton(
              onTap: () => joinRoom(context),
              text: 'Join Room',
            ),
          ],
        ),
      ),
    );
  }
}
