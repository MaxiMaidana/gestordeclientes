import 'package:flutter/material.dart';

class ClientIdView extends StatelessWidget {
  final String id;
  const ClientIdView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Text('sisi aca esta el cliente pa $id');
  }
}
