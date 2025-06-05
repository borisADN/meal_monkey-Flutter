import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_texfield.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChangeAddressView extends StatefulWidget {
  const ChangeAddressView({super.key});

  @override
  State<ChangeAddressView> createState() => _ChangeAddressViewState();
}

class _ChangeAddressViewState extends State<ChangeAddressView> {
  final locations = const [LatLng(37.42796133580664, -122.085749655962)];

  late List<MarkerData> _customMarkers;

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.151926040649414,
  );

  @override
  void initState() {
    super.initState();
    _customMarkers = [
      MarkerData(
        marker: Marker(
          markerId: const MarkerId('id-1'),
          position: locations[0],
        ),
        child: _customMarker('Everywhere\nis a Widgets', Colors.blue),
      ),
    ];
  }

  _customMarker(String symbol, Color color) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Image.asset(
            'assets/images/map_pin.png',
            width: 35,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/images/btn_back.png",
            width: 20,
            height: 20,
          ),
        ),
        centerTitle: false,
        title: Text(
          "Changer d'adresse",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Column(
        children: [
          // === Google Map avec hauteur fixée ===
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
            child: CustomGoogleMapMarkerBuilder(
              customMarkers: _customMarkers,
              builder: (BuildContext context, Set<Marker>? markers) {
                if (markers == null) {
                  return const Center(child: CircularProgressIndicator());
                }
                return GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kLake,
                  compassEnabled: false,
                  gestureRecognizers:
                      Set()..add(
                        Factory<PanGestureRecognizer>(
                          () => PanGestureRecognizer(),
                        ),
                      ),
                  markers: markers,
                  onMapCreated: (GoogleMapController controller) {},
                );
              },
            ),
          ),

          // === Le reste du contenu scrollable ===
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Column(
                children: [
                  RoundTextField(
                    hintText: "Rechercher Adresse",
                    left: Icon(Icons.search, color: TColor.primaryText),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/fav_icon.png',
                        width: 35,
                        height: 35,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Choisir une adresse sauvegardée",
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/btn_next.png',
                        width: 15,
                        height: 15,
                        color: TColor.primaryText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
