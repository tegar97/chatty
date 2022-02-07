import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final imageUrl;
  final name;
  final text;
  final time;
  final bool unread;
  const ChatTile(
      {Key? key,
      this.imageUrl,
      this.name,
      this.text,
      this.time,
      required this.unread})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Row(children: [
        Image.asset(imageUrl, width: 55, height: 55),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: titleStyle),
            SizedBox(
              height: 4,
            ),
            Text(text,
                style: unread
                    ? subtitleTextStyle.copyWith(color: blackColor)
                    : subtitleTextStyle),
          ],
        ),
        Spacer(),
        Text(time, style: subtitleTextStyle)
      ]),
    );
  }
}
