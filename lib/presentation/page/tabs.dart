import 'package:childdriver/config/helper/style.dart';
import 'package:childdriver/presentation/page/home_screen.dart';
import 'package:childdriver/presentation/page/notification_screen.dart';
import 'package:childdriver/presentation/page/profile_screen.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _prevIndex = 0;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3, animationDuration: Duration.zero);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: clearColor,
          border: Border(
            top: BorderSide(width: 1, color: inputBG),
          ),
        ),
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: TabBar(
          controller: _tabController,
          labelStyle: const TextStyle(fontWeight: FontWeight.w400),
          labelColor: appColor,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.transparent,
          onTap: (int index) => setState(() {
            _prevIndex = _currentIndex;
            _currentIndex = index;

            if (_prevIndex == _currentIndex) {
              switch (_currentIndex) {
                case 0:
                  break;
                case 1:
                  break;
                case 2:
                  break;
              }
            }
          }),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 32,
                color: _currentIndex == 0 ? appColor : inactiveTabColor,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications,
                size: 32,
                color: _currentIndex == 1 ? appColor : inactiveTabColor,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 32,
                color: _currentIndex == 2 ? appColor : inactiveTabColor,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(tabController: _tabController),
          NotificationScreen(tabController: _tabController),
          ProfileScreen(tabController: _tabController),
        ],
      ),
    );
  }
}
