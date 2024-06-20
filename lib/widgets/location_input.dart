import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String? _previewImageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 170,
          width: double.infinity,
          child: _previewImageUrl == null
              ? Text(
                  'No location choosen !',
                  textAlign: TextAlign.center,
                )
              : Image.network(
                  _previewImageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          children: [
            TextButton.icon(
              onPressed: () {},
              label: Text('Current location'),
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.primary,
               ),
              icon: Icon(Icons.location_on),
            ),
           TextButton.icon(
              onPressed: () {},
              label: Text('Current location'),
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.primary,
               ),
              icon: Icon(Icons.map),
            ),
          ],
        ),
      ],
    );
  }
}
