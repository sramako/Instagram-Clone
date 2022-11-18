import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/pages/Feed.dart';

const double iconSize = 30;

class navigationIcon {
  IconData? _selected;
  IconData? _unselected;

  navigationIcon(IconData selected, IconData unselected) {
    _selected = selected;
    _unselected = unselected;
  }
}

Icon getIcon(int index, int selectedIndex) {
  List<navigationIcon> icons = [
    navigationIcon(Icons.home, Icons.home_outlined),
    navigationIcon(Icons.search, Icons.search_outlined),
    navigationIcon(Icons.movie, Icons.movie_outlined),
    navigationIcon(Icons.favorite, Icons.favorite_border),
    navigationIcon(Icons.account_circle, Icons.account_circle_outlined)
  ];
  if (index == selectedIndex) {
    return Icon(icons[index]._selected, size: iconSize);
  }
  return Icon(icons[index]._unselected, size: iconSize);
}

class BrowseView extends StatefulWidget {
  const BrowseView({super.key});

  @override
  State<BrowseView> createState() => _BrowseView();
}

class _BrowseView extends State<BrowseView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    FeedPage(),
    Text(
      'Explore',
      style: optionStyle,
    ),
    Text(
      'Reels',
      style: optionStyle,
    ),
    Text(
      'Notifications',
      style: optionStyle,
    ),
    Text(
      'Profile',
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: getIcon(0, _selectedIndex),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: getIcon(1, _selectedIndex),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: getIcon(2, _selectedIndex),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: getIcon(3, _selectedIndex),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: getIcon(4, _selectedIndex),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false),
    );
  }
}
