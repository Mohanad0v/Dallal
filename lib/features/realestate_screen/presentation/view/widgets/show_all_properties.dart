import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowAllButton extends StatelessWidget {
  const ShowAllButton();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: const Text('Show all properties'),
      ),
    );
  }
}