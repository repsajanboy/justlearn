part of 'bottom_nav_bloc.dart';

sealed class BottomNavEvent {}

class InitialBottomNav extends BottomNavEvent {
  final int index;
  InitialBottomNav(this.index);
}

class BottomNavChanged extends BottomNavEvent {
  final int index;

  BottomNavChanged(this.index);
}
