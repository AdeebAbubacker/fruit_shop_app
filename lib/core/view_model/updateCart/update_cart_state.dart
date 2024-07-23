part of 'update_cart_bloc.dart';

@freezed
// class UpdateCartState with _$UpdateCartState {
//   const factory UpdateCartState.initial() = _Initial;
// }

class UpdateCartState with _$UpdateCartState {
  const factory UpdateCartState.initial() = _Initial;
  const factory UpdateCartState.loading() = _Loading;
  const factory UpdateCartState.dataLoaded(
      {required bool success}) = _ItemAdded;
  const factory UpdateCartState.error({required bool error}) = _SomeError;
}