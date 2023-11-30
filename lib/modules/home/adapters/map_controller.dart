import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsController extends ChangeNotifier {
  CameraPosition initialCameraPosition;
  final Map<MarkerId, Marker> _markers = {};

  MapsController(this.initialCameraPosition) {
    _addInitialMarker();
  }

  Set<Marker> get markers => _markers.values.toSet();

  void _addInitialMarker() {
    const markerId = MarkerId("initial_marker");
    final marker =
        Marker(markerId: markerId, position: initialCameraPosition.target);
    _markers[markerId] = marker;
  }

  void onTap(LatLng position) {
    _markers.clear();
    const markerId = MarkerId("last_marker");
    final marker = Marker(markerId: markerId, position: position);
    _markers[markerId] = marker;
    notifyListeners();
  }

  void updateCameraPosition(CameraPosition position) {
    initialCameraPosition = position;
    _addInitialMarker();
    notifyListeners();
  }
}
