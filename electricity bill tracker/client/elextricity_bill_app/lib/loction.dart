import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

Future<String> getUserLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Check if location services are enabled
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return 'Location Disabled';
  }

  // Check for permission
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return 'Permission Denied';
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return 'Permission Denied Forever';
  }

  // Get current position
  final position = await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.low,
  );

  // Get placemarks from coordinates
  final placemarks = await placemarkFromCoordinates(
    position.latitude,
    position.longitude,
  );

  if (placemarks.isNotEmpty) {
    final city = placemarks.first.locality ?? 'Unknown';
    return city;
  }

  return 'Unknown';
}
