import 'package:flutter/material.dart';

class ListPreview extends StatefulWidget {
  final String? FullName;
  final String? Email;
  final int? PhoneNumber;
  final int? PersonalIDNumber;
  final String? Address;

  const ListPreview({
    Key? key,
    this.FullName,
    this.Email,
    this.PhoneNumber,
    this.PersonalIDNumber,
    this.Address,
  }) : super(key: key);

  @override
  _ListPreviewState createState() => _ListPreviewState();
}

class _ListPreviewState extends State<ListPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Personal Data'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return _buildListTile("Full Name", widget.FullName.toString());
            case 1:
              return _buildListTile("Email", widget.Email!);
            case 2:
              return _buildListTile(
                  "Phone Number", widget.PhoneNumber.toString());
            case 3:
              return _buildListTile(
                  "Personal ID Number", widget.PersonalIDNumber.toString());
            case 4:
              return _buildListTile("Address", widget.Address!);
            default:
              return SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget _buildListTile(String label, String value) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(value),
    );
  }
}
