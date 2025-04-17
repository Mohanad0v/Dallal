import 'package:dallal/features/realestate_page/presentation/view/widgets/realestate_page_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/property_bloc.dart';

class RealestatePage extends StatelessWidget {
  const RealestatePage({super.key});

  static const routeName = 'realestatPage';

  @override
  Widget build(BuildContext context) {
    return RealestatePageBody();
  }
}
