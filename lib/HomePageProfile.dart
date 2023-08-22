import 'package:flutter/material.dart';


class HomePageProfile extends StatefulWidget {
  @override
  _HomePageProfileState createState() => _HomePageProfileState();
}

class _HomePageProfileState extends State<HomePageProfile> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomePage(),
    CalendarPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        //selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green,), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today,color: Colors.indigo,), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.red,), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.orangeAccent,), label: 'Profile'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the floating action button tap
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Menu
        Container(
          padding: EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  // Handle menu button tap
                },
              ),
              Text(
                'HomePage',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  // Handle notification button tap
                },
              ),


            ],
          ),
        ),
        // Centered Main Content
        Expanded(
          child: Center(
            child: Text('Home Page Content'),
          ),
        ),
        // Notification Bell
        Container(
          padding: EdgeInsets.all(16.0),
          child: IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button tap
            },
          ),
        ),
      ],
    );
  }
}


class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Calendar Page'),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chat Page'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Page'),
    );
  }
}
