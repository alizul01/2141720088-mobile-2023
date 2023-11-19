import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Future<String> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      return "Lokasi Anda saat ini:\nLatitude: ${position.latitude}\nLongitude: ${position.longitude}";
    } catch (e) {
      return "Gagal mendapatkan lokasi: $e";
    }
  }

  Future<void> _showLocationSharingDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Bagikan Lokasi?"),
          content: const Text("Apakah Anda ingin membagikan lokasi Anda?"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                // Logika untuk membagikan lokasi
                Navigator.pop(context);
              },
              child: const Text('Bagikan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lokasi Saya'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder<String>(
            future: getLocation(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 16),
                      Text('Mengambil lokasi...'),
                    ],
                  );
                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return Text("Error: ${snapshot.error}");
                  } else {
                    return Column(
                      children: [
                        Text(
                          snapshot.data!,
                          style: const TextStyle(fontSize: 18),
                        ),
                        ElevatedButton(
                          onPressed: _showLocationSharingDialog,
                          child: const Text('Bagikan Lokasi'),
                        ),
                      ],
                    );
                  }
                default:
                  return const Text("Default case. This should not happen.");
              }
            },
          ),
        ),
      ),
    );
  }
}
