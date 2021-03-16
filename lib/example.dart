import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  final Function(BuildContext) onTap;
  const ExampleCard({Key key, @required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      onTap: () => onTap(context),
    ));
  }
}
