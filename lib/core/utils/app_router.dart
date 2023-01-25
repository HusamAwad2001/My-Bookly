import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/home/presentation/views/home_screen.dart';

import '../../features/home/presentation/views/book_details_screen.dart';
import '../../features/launch/presentation/views/launch_screen.dart';

abstract class AppRouter{
  static const kHomeScreen = '/home_screen';
  static const kBookDetailsScreen = '/book_details_screen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LaunchScreen(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (context, state) => const BookDetailsScreen(),
      ),
    ],
  );
}