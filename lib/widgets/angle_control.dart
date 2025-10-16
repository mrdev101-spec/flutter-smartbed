import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bed_state.dart';

class AngleControl extends StatelessWidget {
  const AngleControl({super.key});

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
                const Text(
                  'Position Control',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                _buildAngleSlider(
                  'Head Angle',
                  bedState.headAngle,
                  (value) => bedState.setHeadAngle(value),
                ),
                const SizedBox(height: 16),
                _buildAngleSlider(
                  'Foot Angle',
                  bedState.footAngle,
                  (value) => bedState.setFootAngle(value),
                ),
                const SizedBox(height: 16),
                _buildAngleSlider(
                  'Height',
                  bedState.height,
                  (value) => bedState.setHeight(value),
                  max: 100,
                  label: '%',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAngleSlider(
    String title,
    double value,
    Function(double) onChanged, {
    double max = 90,
    String label = '°',
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$title: ${value.round()}$label'),
        Slider(
          value: value,
          min: 0,
          max: max,
          onChanged: onChanged,
        ),
      ],
    );
  }
}