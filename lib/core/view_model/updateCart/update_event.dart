part of 'update_cart_bloc.dart';

@freezed
class UpdateCartEvent with _$UpdateCartEvent {
  const factory UpdateCartEvent.started() = _Started;
  const factory UpdateCartEvent.add({
    required String itemId,
    required int quantity,
  }) = _Add;
}
