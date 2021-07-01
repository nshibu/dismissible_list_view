import 'package:dismissable_example/mail_model.dart';
import 'package:flutter/material.dart';

class MailItem extends StatelessWidget {
  const MailItem({
    required this.mails,
  });

  final MailModel mails;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 30,
        color: Colors.red,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "${mails.title}",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Text(
            "${mails.time}",
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              "${mails.desc}",
              maxLines: 2,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star_outline,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
