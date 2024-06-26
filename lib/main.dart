import 'package:flutter/material.dart';
import 'package:greatplaces_app/providers/great_places.dart';
import './screens/add_place_screen.dart';
import 'package:provider/provider.dart';
import './screens/places_list_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Great Places',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme
              .copyWith(primary: Colors.indigo, secondary: Colors.amber),
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
