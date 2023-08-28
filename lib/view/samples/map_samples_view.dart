import 'package:alvamind_library/widget/organism/map/map.dart';
import 'package:flutter/material.dart';

class MapSamplesView extends StatefulWidget {
  static const routeName = 'organism-map-samples';

  const MapSamplesView({super.key});

  @override
  State<MapSamplesView> createState() => _MapSamplesViewState();
}

class _MapSamplesViewState extends State<MapSamplesView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: AppMap(),
    );
  }
}
