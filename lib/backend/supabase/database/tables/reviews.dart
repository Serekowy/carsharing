import '../database.dart';

class ReviewsTable extends SupabaseTable<ReviewsRow> {
  @override
  String get tableName => 'reviews';

  @override
  ReviewsRow createRow(Map<String, dynamic> data) => ReviewsRow(data);
}

class ReviewsRow extends SupabaseDataRow {
  ReviewsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReviewsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userIs => getField<String>('user_is');
  set userIs(String? value) => setField<String>('user_is', value);

  String? get carId => getField<String>('car_id');
  set carId(String? value) => setField<String>('car_id', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
