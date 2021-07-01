import 'package:dismissable_example/mail_item.dart';
import 'package:dismissable_example/mail_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<MailModel> mails = MailModel.getMails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissable ListView"),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: mails.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.horizontal,
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart) {
                setState(() {
                  mails.removeAt(index);
                });
                showSnakbar(context, 'Mail has beed deleted!');
              } else if (direction == DismissDirection.startToEnd) {
                showSnakbar(context, 'Mail has beed Archived!');
              }
            },
            background: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20.0),
              color: Colors.blue,
              child: Icon(Icons.archive_outlined, color: Colors.white),
            ),
            secondaryBackground: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20.0),
              color: Colors.redAccent,
              child: Icon(Icons.delete, color: Colors.white),
            ),
            child: MailItem(mails: mails[index]),
          );
        },
      ),
    );
  }
}

void showSnakbar(context, String s) {
  final snackBar = SnackBar(
    content: Text('$s'),
    duration: Duration(milliseconds: 500),
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
