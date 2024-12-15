import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


class ManageLocationPage extends StatefulWidget {
  @override
  _ManageLocationPageState createState() => _ManageLocationPageState();
}

class _ManageLocationPageState extends State<ManageLocationPage> {
  late GoogleMapController mapController;
  LatLng _currentPosition = LatLng(17.3850, 78.4867); // Default position (Hyderabad)
  bool _isLoadingLocation = false;

  // لتحديد الموقع الحالي
  void _getCurrentLocation() async {
    setState(() => _isLoadingLocation = true);
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      setState(() => _isLoadingLocation = false);
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
      _isLoadingLocation = false;
      mapController.animateCamera(CameraUpdate.newLatLng(_currentPosition));
    });
  }

  // واجهة المستخدم
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Address'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text('Home'),
            subtitle: Text('Plot no.209, Kavuri Hills, Madhapur, Telangana'),
            trailing: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(value: 'edit', child: Text('Edit')),
                PopupMenuItem(value: 'delete', child: Text('Delete')),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextButton.icon(
              icon: Icon(Icons.add_location_alt, color: Colors.blue),
              label: Text('Add another address'),
              onPressed: () => _showAddressBottomSheet(context),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: _isLoadingLocation
                ? Center(child: CircularProgressIndicator())
                : GoogleMap(
                    onMapCreated: (controller) => mapController = controller,
                    initialCameraPosition: CameraPosition(
                      target: _currentPosition,
                      zoom: 15,
                    ),
                    markers: {
                      Marker(
                        markerId: MarkerId('currentLocation'),
                        position: _currentPosition,
                      ),
                    },
                    onTap: (LatLng tappedPoint) {
                      setState(() {
                        _currentPosition = tappedPoint;
                      });
                    },
                  ),
          ),
        ],
      ),
    );
  }

  // نافذة لإضافة العنوان
  void _showAddressBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(
              left: 16, right: 16, top: 16, bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Edit / Update Address',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'House/Flat Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Landmark (Optional)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChoiceChip(label: Text('Home'), selected: true),
                  ChoiceChip(label: Text('Other'), selected: false),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Update address'),
              ),
              SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}