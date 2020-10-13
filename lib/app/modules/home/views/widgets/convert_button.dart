import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:in8_converter/app/modules/home/controllers/home_controller.dart';

class ConvertButton extends StatefulWidget {
  const ConvertButton({Key key}) : super(key: key);

  @override
  _ConvertButtonState createState() => _ConvertButtonState();
}

class _ConvertButtonState extends State<ConvertButton> {
  final _controller = Get.find<HomeController>();

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((Duration duration) {
      FeatureDiscovery.discoverFeatures(
        context,
        const <String>{
          'feature1',
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const shuffleIcon = Icon(Icons.shuffle, size: 32);

    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Theme.of(context).primaryColor, blurRadius: 16),
          ]),
      child: DescribedFeatureOverlay(
        featureId: 'feature1',
        tapTarget: shuffleIcon,
        contentLocation: ContentLocation.below,
        title: const Text('Converta aqui'),
        description: const Text(
            'Escolha as moedas que deseja converter e elas serão salvas em seu histórico.'),
        child: InkWell(
          onTap: () async {
            final currencies = await _controller.convertCurrencies();
            _controller.outputCur.text =
                currencies.outputValue.toStringAsFixed(2);
          },
          child: Icon(
            Icons.shuffle,
            size: 38,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
