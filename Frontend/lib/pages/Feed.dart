import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPage();
}

class _FeedPage extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Instadrama',
            style: TextStyle(fontFamily: 'Billabong', fontSize: 36),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.white),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_box_outlined),
              iconSize: 28,
              tooltip: 'Show Create Tools',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Show Create Tools')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline_rounded),
              iconSize: 28,
              tooltip: 'Show DMs',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Show DMs')));
              },
            ),
          ]),
      body: const Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
