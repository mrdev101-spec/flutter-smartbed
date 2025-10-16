import 'package:flutter/material.dart';
import '../generated/l10n/app_localizations.dart';

class RemoteControlScreen extends StatelessWidget {
  const RemoteControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: Container(
        color: Colors.blue[50],
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildControlPair(
                  leftText: 'ตะแคงตำแหน่งซ้าย',
                  rightText: 'ตะแคงตำแหน่งขวา',
                  leftIcon: Icons.rotate_left,
                  rightIcon: Icons.rotate_right,
                  subText: '(พลิกตัวผู้ป่วย)',
                ),
                const SizedBox(height: 15),
                _buildControlPair(
                  leftText: 'พนักพิงเท้าขึ้น',
                  rightText: 'พนักพิงเท้าลง',
                  leftIcon: Icons.keyboard_double_arrow_up,
                  rightIcon: Icons.keyboard_double_arrow_down,
                ),
                const SizedBox(height: 15),
                _buildControlPair(
                  leftText: 'พนักพิงหลังขึ้น',
                  rightText: 'พนักพิงหลังลง',
                  leftIcon: Icons.keyboard_arrow_up,
                  rightIcon: Icons.keyboard_arrow_down,
                ),
                const SizedBox(height: 15),
                _buildControlPair(
                  leftText: 'เปิดช่องขับถ่าย',
                  rightText: 'ปิดช่องขับถ่าย',
                  leftIcon: Icons.circle_outlined,
                  rightIcon: Icons.circle,
                ),
                const SizedBox(height: 15),
                _buildControlPair(
                  leftText: 'หมุนอัตโนมัติ A',
                  rightText: 'หมุนอัตโนมัติ B',
                  leftIcon: Icons.autorenew,
                  rightIcon: Icons.autorenew,
                  subText: '(ค่าโรงงาน)',
                ),
                const SizedBox(height: 15),
                _buildControlPair(
                  leftText: 'ปรับนั่งอัตโนมัติ',
                  rightText: 'หยุดฉุกเฉิน',
                  leftIcon: Icons.chair_outlined,
                  rightIcon: Icons.stop_circle,
                  rightIconColor: Colors.red,
                ),
                const SizedBox(height: 15),
                _buildResetButton(),
              ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildControlPair({
    required String leftText,
    required String rightText,
    required IconData leftIcon,
    required IconData rightIcon,
    String? subText,
    Color? rightIconColor,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  _buildControlButton(
                    icon: leftIcon,
                    iconColor: Colors.blue[300],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    leftText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  _buildControlButton(
                    icon: rightIcon,
                    iconColor: rightIconColor ?? Colors.blue[300],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    rightText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        if (subText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              subText,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 10,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    Color? iconColor,
  }) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: Colors.blue[600]!,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: iconColor ?? Colors.blue[600],
        size: 30,
      ),
    );
  }

  Widget _buildResetButton() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[850],
        border: Border.all(
          color: Colors.blue[300]!,
          width: 2,
        ),
      ),
      child: Icon(
        Icons.refresh,
        color: Colors.blue[300],
        size: 30,
      ),
    );
  }
}