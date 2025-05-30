import '../database.dart';

class CarsTable extends SupabaseTable<CarsRow> {
  @override
  String get tableName => 'cars';

  @override
  CarsRow createRow(Map<String, dynamic> data) => CarsRow(data);
}

class CarsRow extends SupabaseDataRow {
  CarsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get brand => getField<String>('brand')!;
  set brand(String value) => setField<String>('brand', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get registration => getField<String>('registration');
  set registration(String? value) => setField<String>('registration', value);

  String? get pricePerDay => getField<String>('price_per_day');
  set pricePerDay(String? value) => setField<String>('price_per_day', value);

  bool? get availability => getField<bool>('availability');
  set availability(bool? value) => setField<bool>('availability', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);
}
