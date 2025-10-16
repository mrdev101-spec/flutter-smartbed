import 'package:flutter/foundation.dart';

class BedState extends ChangeNotifier {
  // Angles and height
  double _headAngle = 0.0;
  double _footAngle = 0.0;
  double _height = 50.0;
  
  // Other states
  bool _toiletOpen = false;
  bool _isEmergencyStop = false;
  String _currentMode = 'normal'; // normal, autoA, autoB
  bool _massageOn = false;
  int _massageIntensity = 0;

  // Getters
  double get headAngle => _headAngle;
  double get footAngle => _footAngle;
  double get height => _height;
  bool get massageOn => _massageOn;
  int get massageIntensity => _massageIntensity;
  bool get toiletOpen => _toiletOpen;
  bool get isEmergencyStop => _isEmergencyStop;
  String get currentMode => _currentMode;

  // Setters with constraints
  void setHeadAngle(double angle) {
    _headAngle = angle.clamp(0.0, 85.0);
    notifyListeners();
  }

  void setFootAngle(double angle) {
    _footAngle = angle.clamp(0.0, 45.0);
    notifyListeners();
  }

  void setHeight(double value) {
    _height = value.clamp(0.0, 100.0);
    notifyListeners();
  }

  // Control methods
  void turnLeft() {
    // Implement left turn logic
    notifyListeners();
  }

  void turnRight() {
    // Implement right turn logic
    notifyListeners();
  }

  void legUp() {
    setFootAngle(_footAngle + 5);
  }

  void legDown() {
    setFootAngle(_footAngle - 5);
  }

  void backUp() {
    setHeadAngle(_headAngle + 5);
  }

  void backDown() {
    setHeadAngle(_headAngle - 5);
  }

  void toggleToilet() {
    _toiletOpen = !_toiletOpen;
    notifyListeners();
  }

  void setAutoModeA() {
    _currentMode = 'autoA';
    notifyListeners();
  }

  void setAutoModeB() {
    _currentMode = 'autoB';
    notifyListeners();
  }

  void autoSitUp() {
    setHeadAngle(60);
    setFootAngle(15);
  }

  void emergencyStop() {
    _isEmergencyStop = true;
    notifyListeners();
  }

  void toggleMassage() {
    _massageOn = !_massageOn;
    if (!_massageOn) {
      _massageIntensity = 0;
    }
    notifyListeners();
  }

  void setMassageIntensity(int intensity) {
    if (_massageOn) {
      _massageIntensity = intensity.clamp(0, 100);
      notifyListeners();
    }
  }

  // Preset positions
  void setFlatPosition() {
    _headAngle = 0;
    _footAngle = 0;
    notifyListeners();
  }

  void setReadingPosition() {
    _headAngle = 45;
    _footAngle = 0;
    notifyListeners();
  }

  void setTVPosition() {
    _headAngle = 60;
    _footAngle = 15;
    notifyListeners();
  }

  void setZeroGravityPosition() {
    _headAngle = 30;
    _footAngle = 30;
    notifyListeners();
  }

  void reset() {
    _headAngle = 0;
    _footAngle = 0;
    _height = 50;
    _toiletOpen = false;
    _isEmergencyStop = false;
    _currentMode = 'normal';
    _massageOn = false;
    _massageIntensity = 0;
    notifyListeners();
  }
}