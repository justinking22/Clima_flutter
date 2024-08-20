import 'package:geolocator/geolocator.dart';

class Location {
  double? longitude;
  double? latitude;

  Future<void> getCurrentPosition() async {
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.low,
      distanceFilter: 100,
    );

    try {
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
