part of 'homescreen_bloc.dart';

@freezed
class HomescreenState with _$HomescreenState {
  const factory HomescreenState.initial() = _Initial;
  const factory HomescreenState.loading() = _Loading;
  const factory HomescreenState.dataLoaded(
      {required List<Item> items}) = _DataLoaded;
  const factory HomescreenState.error({required bool error}) = Error;
}
