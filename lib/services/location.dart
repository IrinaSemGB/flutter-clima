import 'package:geolocator/geolocator.dart';

class Location {

  double latitude;
  double longitude;

  Location({ this.latitude, this.longitude, });

  Future<void> getCurrentLocation() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}