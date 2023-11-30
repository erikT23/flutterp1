
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/home/adapters/map_controller.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final MapsController _controller;

  @override
  void initState() {
    super.initState();
    _controller = MapsController(const CameraPosition(
        target: LatLng(20.763283523090575, -86.9659543203113), zoom: 16));
    _controller.addListener(() {
      setState(() {});
    });
    _requestLocacionPermission().then((_) {
      _determinePosition().then((position) {
        _controller.updateCameraPosition(CameraPosition(
            target: LatLng(position.latitude, position.longitude), zoom: 16));
      });
    }).catchError((error) {
      print('error al botener la posicion: $error');
    });
  }

  Future<void> _requestLocacionPermission() async {
    var status = await Permission.location.request();
    if (!status.isGranted) {
      print("permiso de ubicacion denegado");
      if (status.isPermanentlyDenied) {
        openAppSettings();
      }
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("los servicios de ubicacion estan desactivados");
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("los permisos de ubicacion fueron denegados");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          "los permisos de ubicacion fueron denegados permanentemente");
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      mapType: MapType.satellite,
      initialCameraPosition: _controller.initialCameraPosition,
      myLocationButtonEnabled: true,
      onTap: _controller.onTap,
      markers: _controller.markers,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
