import '../database.dart';

class RentalsTable extends SupabaseTable<RentalsRow> {
  @override
  String get tableName => 'rentals';

  @override
  RentalsRow createRow(Map<String, dynamic> data) => RentalsRow(data);
}

class RentalsRow extends SupabaseDataRow {
  RentalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RentalsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get carId => getField<String>('car_id');
  set carId(String? value) => setField<String>('car_id', value);

  DateTime get startDate => getField<DateTime>('start_date')!;
  set startDate(DateTime value) => setField<DateTime>('start_date', value);

  DateTime get endDate => getField<DateTime>('end_date')!;
  set endDate(DateTime value) => setField<DateTime>('end_date', value);

  String? get totalPrice => getField<String>('total_price');
  set totalPrice(String? value) => setField<String>('total_price', value);
}
