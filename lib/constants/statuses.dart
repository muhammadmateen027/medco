class Statuses {
  Statuses._();

  static const String TOKEN = 'token';
  static const String USEROBJECT = 'userinfo';
  static const String FIREBASE_TOKEN = 'firebaseToken';

  static const String APPROVED = 'approved';
  static const String DRAFT = 'draft';
  static const String COMPLETED_STATUS = 'completed';
  static const String COLLECTED_STATUS = 'collected';
  static const String DELIVERED_STATUS = 'delivered';
  static const String DELIVERING_STATUS = 'delivering';
  static const String COLLECTING_STATUS = 'collecting';
  static const String PENDING_STATUS = 'pending';
  static const String FROM_HUB_SERVICE = 'from-hub';
  static const String TO_HUB_SERVICE = 'to-hub';

  static const String DOCUMENT_UPLOAD = 'document-upload';
  static const String PROFILE_PICTURE = 'profile_picture';
  static const String NIC = 'nic';
  static const String DRIVING_LICENSE = 'driving_license';
  static const String VEHICLE_REGISTRATION = 'vehicle_registration';

  static const String FOOD = 'food';
  static const String FOOD_GROCERIES = 'food-groceries';
  static const String GROCERIES = 'groceries';

  static const String REPORT_TO_TEAM_LEAD = 'report-to-team-lead';
  static const String DELIVER = 'deliver';
  static const String PURCHASE_NOW = 'purchase-new';
  static const String MARK_AS_DELIVERED = 'mark-as-delivered';

  static const List<String> countryIds = [
    'BN',
    'CN',
    'HK',
    'ID',
    'IN',
    'JP',
    'MY',
    'PH',
    'SG',
    'TH',
  ];
}