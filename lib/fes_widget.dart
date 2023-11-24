import 'dart:async';

import 'package:fes_flutter/mmob_customer_info.dart';
import 'package:fes_flutter/mmob_integration_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FesWidget extends StatefulWidget {
  const FesWidget({super.key});

  @override
  State<FesWidget> createState() => _FesWidgetState();
}

class _FesWidgetState extends State<FesWidget> {
  static const methodChannel = MethodChannel('com.client.mmob/methodChannel');

  // final String _message = 'BOOT';
  Future<void> _mmobBoot() async {
    final bootInfo = MmobIntegrationConfiguration(
      cpId: 'cp_0JAJmydbI1kUGHPP4PKyr',
      integrationId: 'cpd_RYZMjQ63z0-8hEYb9DqQ6',
      environment: 'stag',
    );

    final userData = MmobCustomerInfo(
        // email: '',
        // firstName: '',
        // surname: '',
        // gender: '',
        // title: '',
        // buildingNumber: '',
        // address1: '',
        // townCity: '',
        // postcode: '',
        // dob: '',
        );
    try {
      await methodChannel.invokeMethod('boot', {
        'integration_configuration': bootInfo.toJson(),
        'customer_info': userData.toJson()
      });
    } on PlatformException catch (e) {
      debugPrint('FES:: ${e.message}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: UniqueKey(),
      onPressed: _mmobBoot,
      tooltip:
          'Check out our\namazing services for\ninsurance, travel, loan\nand more!',
      child: const Text('FES'),
    );
  }
}
