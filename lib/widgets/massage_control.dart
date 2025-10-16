import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bed_state.dart';

class MassageControl extends StatelessWidget {
  const MassageControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BedState>(
      builder: (context, bedState, child) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Massage Control',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: bedState.massageOn,
                      onChanged: (_) => bedState.toggleMassage(),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                if (bedState.massageOn) ...[
                  Text('Intensity: ${bedState.massageIntensity}%'),
                  Slider(
                    value: bedState.massageIntensity.toDouble(),
                    min: 0,
                    max: 100,
                    onChanged: (value) =>
                        bedState.setMassageIntensity(value.round()),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}