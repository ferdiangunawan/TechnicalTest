import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_apps/bloc/country_bloc.dart';
import 'package:football_apps/bloc/soccer_bloc.dart';
import 'package:football_apps/ui/pages/page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CountryBloc>(
              create: (_) => CountryBloc()..add(GetCountryName())),
          BlocProvider<SoccerBloc>(
              create: (_) => SoccerBloc()..add(GetLeaguesName()))
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainPage(),
        ));
  }
}
