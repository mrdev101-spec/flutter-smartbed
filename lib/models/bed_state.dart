import 'package:flutter/foundation.dart';

class BedState extends ChangeNotifier {
  bool _toiletOpen = false;
  bool _isEmergencyStop = false;
  String _currentMode = 'normal'; // normal, autoA, autoB

  // Functions for bed movement
  void turnLeft() {
    // Implement left turn logic
    notifyListeners();
  }

  void turnRight() {
    // Implement right turn logic
    notifyListeners();
  }

  void legUp() {
    // Implement leg up logic
    notifyListeners();
  }

  void legDown() {
    // Implement leg down logic
    notifyListeners();
  }

  void backUp() {
    // Implement back up logic
    notifyListeners();
  }

  void backDown() {
    // Implement back down logic
    notifyListeners();
  }

  void toggleToilet() {
    _toiletOpen = !_toiletOpen;
    notifyListeners();
  }

  void setAutoModeA() {
    _currentMode = 'autoA';
    // Implement auto mode A logic
    notifyListeners();
  }

  void setAutoModeB() {
    _currentMode = 'autoB';
    // Implement auto mode B logic
    notifyListeners();
  }

  void autoSitUp() {
    // Implement auto sit up logic
    notifyListeners();
  }

  void emergencyStop() {
    _isEmergencyStop = true;
    // Implement emergency stop logic
    notifyListeners();
  }

  void reset() {
    _toiletOpen = false;
    _isEmergencyStop = false;
    _currentMode = 'normal';
    // Reset all positions
    notifyListeners();
  }

  // Getters
  bool get isToiletOpen => _toiletOpen;
  bool get isEmergencyStopped => _isEmergencyStop;
  String get currentMode => _currentMode;
}