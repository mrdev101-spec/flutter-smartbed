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
                  title: 'Head Angle',
                  value: bedState.headAngle,
                  onChanged: (value) => bedState.setHeadAngle(value),
                  max: 85,
                  label: '°',
                ),
                const SizedBox(height: 16),
                _buildAngleSlider(
                  title: 'Foot Angle',
                  value: bedState.footAngle,
                  onChanged: (value) => bedState.setFootAngle(value),
                  max: 45,
                  label: '°',
                ),
                const SizedBox(height: 16),
                _buildAngleSlider(
                  title: 'Height',
                  value: bedState.height,
                  onChanged: (value) => bedState.setHeight(value),
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

  Widget _buildAngleSlider({
    required String title,
    required double value,
    required Function(double) onChanged,
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