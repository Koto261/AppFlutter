import 'package:flutter/foundation.dart';
import '../models/tariff_models.dart';
import '../service/tariff_service.dart';

class TariffProvider with ChangeNotifier {
  TariffData? _tariffData;
  bool _isLoading = false;
  String? _error;

  final TariffService _tariffService = TariffService();

  TariffData? get tariffData => _tariffData;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // LOAD DATA
  Future<void> loadTariffs() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _tariffData = await _tariffService.loadTariffs();
    } catch (e) {
      _error = e.toString();
      debugPrint('Provider error: $_error');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // =========================
  // TARIF 1 (SAFE VERSION)
  // =========================
  int? getTariff1Premium(String powerRange) {
    if (_tariffData == null) return null;

    final tariff1 = _tariffData!.tariffs['tariff_1'];

    if (tariff1 == null || tariff1['categories'] == null) return null;

    final categories = tariff1['categories'] as List;

    for (var cat in categories) {
      if (cat['power_range'] == powerRange) {
        return (cat['net_premium'] ??
                cat['moto_premium'] ??
                cat['fiscal_premium']) as int?;
      }
    }

    return null;
  }

  // =========================
  // TARIF 2
  // =========================
  List<dynamic> getTariff2Premiums() {
    if (_tariffData == null) return [];

    final tariff2 = _tariffData!.tariffs['tariff_2'];

    if (tariff2 == null || tariff2['subcategories'] == null) return [];

    return tariff2['subcategories'] as List;
  }

  // =========================
  // COMMON RULES
  // =========================
  int getDailyIndemnityLimit() {
    return _tariffData?.commonRules.dailyIndemnityLimit ?? 0;
  }
}