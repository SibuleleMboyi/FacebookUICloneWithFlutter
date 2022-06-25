import 'package:facebook_ui_clone/config/palette.dart';
import 'package:facebook_ui_clone/models/models.dart';
import 'package:flutter/material.dart';

class Room extends StatelessWidget {
  final List<User> onlineUsers;
  const Room({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        color: Colors.white,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 4.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }
            return Container(
                margin: const EdgeInsets.all(8.0),
                height: 20.0,
                width: 20.0,
                color: Colors.red);
          },
        ));
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print("Create Room"),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
        //foregroundColor: MaterialStateProperty.all(Colors.red),
        side: MaterialStateProperty.all(
          BorderSide(width: 3.0, color: (Colors.blueAccent[100])!),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(color: Palette.facebookBlue),
        ),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: const Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4.0),
          const Text("Create\nRoom")
        ],
      ),
    );
  }
}
