import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justlearn/blocs/bloc_barrel.dart';
import 'package:justlearn/blocs/bottom_navigation/bottom_nav_item.dart';
import 'package:justlearn/blocs/bottom_navigation/bottom_nav_item_type.dart';
import 'package:justlearn/presentation/lessons/lessons.dart';
import 'package:justlearn/presentation/profile/profile.dart';
import 'package:justlearn/presentation/tutors/tutors.dart';
import 'package:justlearn/presentation/videos/videos.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBloc()..add(InitialBottomNav(0)),
      child:
          BlocBuilder<BottomNavBloc, BottomNavState>(builder: (context, state) {
        if (state is CreateBottomNav) {
          return _buildTab(context, state);
        } else {
          return Container();
        }
      }),
    );
  }

  Widget _buildTab(BuildContext context, CreateBottomNav state) {
    final items = state.items.map((type) => _getItem(type));
    return Scaffold(
      body: IndexedStack(
        index: state.currentIndex,
        children: items.map((e) => e.page).toList(),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 20,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: state.currentIndex,
          onTap: (int index) {
            BlocProvider.of<BottomNavBloc>(context)
                .add(BottomNavChanged(index));
          },
          items: items
              .map(
                (e) => BottomNavigationBarItem(
                  icon: e.icon,
                  label: e.title,
                  activeIcon: e.activeIcon,
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  BottomNavItem _getItem(BottomNavItemType type) {
    switch (type) {
      case BottomNavItemType.tutors:
        return BottomNavItem(
          page: TutorsScreen(),
          title: '',
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.search,
            color: Color(0xFF3061cc),
          ),
        );
      case BottomNavItemType.lessons:
        return BottomNavItem(
          page: LessonsScreen(),
          title: '',
          icon: Icon(
            Icons.playlist_play,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.playlist_play,
            color: Color(0xFF3061cc),
          ),
        );
      case BottomNavItemType.videos:
        return BottomNavItem(
          page: VideosScreen(),
          title: '',
          icon: Icon(
            Icons.bolt,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.bolt,
            color: Color(0xFF3061cc),
          ),
        );
      case BottomNavItemType.profiles:
        return BottomNavItem(
          page: ProfileScreen(),
          title: '',
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.person,
            color: Color(0xFF3061cc),
          ),
        );
    }
  }
}
