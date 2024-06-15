import 'package:flutter/material.dart';
import 'package:greatplaces_app/providers/great_places.dart';
import 'package:provider/provider.dart';
import './screens/places_list_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(primary: Colors.indigo, secondary: Colors.amber),
        ),
        home: PlacesListScreen(),
      ),
    );
  }
}
