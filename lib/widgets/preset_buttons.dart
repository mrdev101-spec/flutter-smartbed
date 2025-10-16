import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bed_state.dart';

class PresetButtons extends StatelessWidget {
  const PresetButtons({super.key});

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
                  'Preset Positions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildPresetButton(
                      context,
                      'Flat',
                      Icons.bed,
                      bedState.setFlatPosition,
                    ),
                    _buildPresetButton(
                      context,
                      'Reading',
                      Icons.book,
                      bedState.setReadingPosition,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildPresetButton(
                      context,
                      'TV',
                      Icons.tv,
                      bedState.setTVPosition,
                    ),
                    _buildPresetButton(
                      context,
                      'Zero-G',
                      Icons.air,
                      bedState.setZeroGravityPosition,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildPresetButton(
    BuildContext context,
    String label,
    IconData icon,
    VoidCallback onPressed,
  ) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
      ),
    );
  }
}