part of 'get_check_thisitem_bloc.dart';

@freezed
class GetCheckThisitemState with _$GetCheckThisitemState {
      const factory GetCheckThisitemState.initial() = _Initial;
  const factory GetCheckThisitemState.loading() = _Loading;
  const factory GetCheckThisitemState.dataLoaded(
      {required List<Item> items}) = _GetCheckThisitemLoaded;
  const factory GetCheckThisitemState.error({required bool error}) = GetCheckThisitemError;

}
