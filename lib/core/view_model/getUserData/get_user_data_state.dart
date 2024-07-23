part of 'get_user_data_bloc.dart';

@freezed
// class GetUserDataState with _$GetUserDataState {
//   const factory GetUserDataState.initial() = _Initial;
// }

class GetUserDataState with _$GetUserDataState {
  const factory GetUserDataState.initial() = _Initial;
  const factory GetUserDataState.loading() = _Loading;
  const factory GetUserDataState.dataLoaded({required UserModel items}) =
      _GetUsersData;
  const factory GetUserDataState.error({required bool error}) =
      GetUserDataError;
}
