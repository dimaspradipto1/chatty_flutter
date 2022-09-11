import 'package:flutter/material.dart';
import 'package:flutter_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final imageUrl;
  final name;
  final text;
  final time;
  final bool unread;

  ChatTile({
    this.imageUrl,
    this.name,
    this.text,
    this.time,
    this.unread,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 55,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: title.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: unread
                  ? subTitle.copyWith(
                      color: navyColor,
                    )
                  : subTitle.copyWith(
                      color: greyColor,
                    ),
            ),
          ],
        ),
        Spacer(),
        Text(time,
            style: subTitle.copyWith(
              color: greyColor,
            )),
      ],
    );
  }
}
