import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/app_router.dart';
import 'package:my_bookly/core/utils/service_locator.dart';
import 'package:my_bookly/features/home/data/repos/home_repo_implement.dart';
import 'package:my_bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:my_bookly/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';

void main() {
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplement>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImplement>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
