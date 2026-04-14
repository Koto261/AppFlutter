// models/tariff_models.dart

class TariffData {
  final Metadata metadata;
  final CommonRules commonRules;
  final Map<String, dynamic> tariffs;

  TariffData({
    required this.metadata,
    required this.commonRules,
    required this.tariffs,
  });

  factory TariffData.fromJson(Map<String, dynamic> json) {
    return TariffData(
      metadata: Metadata.fromJson(json['metadata']),
      commonRules: CommonRules.fromJson(json['common_rules']),
      tariffs: json['tariffs'],
    );
  }
}

class Metadata {
  final String version;
  final String title;
  final DateTime effectiveDate;
  final String currency;
  final String globalIncrease;

  Metadata({
    required this.version,
    required this.title,
    required this.effectiveDate,
    required this.currency,
    required this.globalIncrease,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      version: json['version'],
      title: json['title'],
      effectiveDate: DateTime.parse(json['effective_date']),
      currency: json['currency'],
      globalIncrease: json['global_increase'],
    );
  }
}

class CommonRules {
  final MinimumValues minimumValues;
  final Franchise franchise;
  final int dailyIndemnityLimit;
  final int maxIndemnity;
  final GemSurcharge gemSurcharge;
  final TireDamage tireDamage;
  final PolicyFees policyFees;
  final VehicleAgeRules vehicleAgeRules;
  final FleetDiscount fleetDiscount;
  final String naturalPhenomena;

  CommonRules({
    required this.minimumValues,
    required this.franchise,
    required this.dailyIndemnityLimit,
    required this.maxIndemnity,
    required this.gemSurcharge,
    required this.tireDamage,
    required this.policyFees,
    required this.vehicleAgeRules,
    required this.fleetDiscount,
    required this.naturalPhenomena,
  });

  factory CommonRules.fromJson(Map<String, dynamic> json) {
    return CommonRules(
      minimumValues: MinimumValues.fromJson(json['minimum_values']),
      franchise: Franchise.fromJson(json['franchise']),
      dailyIndemnityLimit: json['daily_indemnity_limit'],
      maxIndemnity: json['max_indemnity'],
      gemSurcharge: GemSurcharge.fromJson(json['gem_surcharge']),
      tireDamage: TireDamage.fromJson(json['tire_damage']),
      policyFees: PolicyFees.fromJson(json['policy_fees']),
      vehicleAgeRules: VehicleAgeRules.fromJson(json['vehicle_age_rules']),
      fleetDiscount: FleetDiscount.fromJson(json['fleet_discount']),
      naturalPhenomena: json['natural_phenomena']['description'],
    );
  }
}

// ... (continuez avec les autres classes)