// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewOrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() vieworder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? vieworder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? vieworder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Vieworder value) vieworder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Vieworder value)? vieworder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Vieworder value)? vieworder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewOrdersEventCopyWith<$Res> {
  factory $ViewOrdersEventCopyWith(
          ViewOrdersEvent value, $Res Function(ViewOrdersEvent) then) =
      _$ViewOrdersEventCopyWithImpl<$Res, ViewOrdersEvent>;
}

/// @nodoc
class _$ViewOrdersEventCopyWithImpl<$Res, $Val extends ViewOrdersEvent>
    implements $ViewOrdersEventCopyWith<$Res> {
  _$ViewOrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ViewOrdersEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ViewOrdersEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() vieworder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? vieworder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? vieworder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Vieworder value) vieworder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Vieworder value)? vieworder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Vieworder value)? vieworder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ViewOrdersEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$VieworderImplCopyWith<$Res> {
  factory _$$VieworderImplCopyWith(
          _$VieworderImpl value, $Res Function(_$VieworderImpl) then) =
      __$$VieworderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VieworderImplCopyWithImpl<$Res>
    extends _$ViewOrdersEventCopyWithImpl<$Res, _$VieworderImpl>
    implements _$$VieworderImplCopyWith<$Res> {
  __$$VieworderImplCopyWithImpl(
      _$VieworderImpl _value, $Res Function(_$VieworderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VieworderImpl implements _Vieworder {
  const _$VieworderImpl();

  @override
  String toString() {
    return 'ViewOrdersEvent.vieworder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VieworderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() vieworder,
  }) {
    return vieworder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? vieworder,
  }) {
    return vieworder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? vieworder,
    required TResult orElse(),
  }) {
    if (vieworder != null) {
      return vieworder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Vieworder value) vieworder,
  }) {
    return vieworder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Vieworder value)? vieworder,
  }) {
    return vieworder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Vieworder value)? vieworder,
    required TResult orElse(),
  }) {
    if (vieworder != null) {
      return vieworder(this);
    }
    return orElse();
  }
}

abstract class _Vieworder implements ViewOrdersEvent {
  const factory _Vieworder() = _$VieworderImpl;
}

/// @nodoc
mixin _$ViewOrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderModel> orderList) dataLoaded,
    required TResult Function(bool error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderModel> orderList)? dataLoaded,
    TResult? Function(bool error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderModel> orderList)? dataLoaded,
    TResult Function(bool error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ViewCart value) dataLoaded,
    required TResult Function(ViewOrdersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ViewCart value)? dataLoaded,
    TResult? Function(ViewOrdersStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ViewCart value)? dataLoaded,
    TResult Function(ViewOrdersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewOrdersStateCopyWith<$Res> {
  factory $ViewOrdersStateCopyWith(
          ViewOrdersState value, $Res Function(ViewOrdersState) then) =
      _$ViewOrdersStateCopyWithImpl<$Res, ViewOrdersState>;
}

/// @nodoc
class _$ViewOrdersStateCopyWithImpl<$Res, $Val extends ViewOrdersState>
    implements $ViewOrdersStateCopyWith<$Res> {
  _$ViewOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ViewOrdersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ViewOrdersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderModel> orderList) dataLoaded,
    required TResult Function(bool error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderModel> orderList)? dataLoaded,
    TResult? Function(bool error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderModel> orderList)? dataLoaded,
    TResult Function(bool error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ViewCart value) dataLoaded,
    required TResult Function(ViewOrdersStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ViewCart value)? dataLoaded,
    TResult? Function(ViewOrdersStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ViewCart value)? dataLoaded,
    TResult Function(ViewOrdersStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ViewOrdersState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ViewOrdersStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ViewOrdersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderModel> orderList) dataLoaded,
    required TResult Function(bool error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderModel> orderList)? dataLoaded,
    TResult? Function(bool error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderModel> orderList)? dataLoaded,
    TResult Function(bool error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ViewCart value) dataLoaded,
    required TResult Function(ViewOrdersStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ViewCart value)? dataLoaded,
    TResult? Function(ViewOrdersStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ViewCart value)? dataLoaded,
    TResult Function(ViewOrdersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ViewOrdersState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ViewCartImplCopyWith<$Res> {
  factory _$$ViewCartImplCopyWith(
          _$ViewCartImpl value, $Res Function(_$ViewCartImpl) then) =
      __$$ViewCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderModel> orderList});
}

/// @nodoc
class __$$ViewCartImplCopyWithImpl<$Res>
    extends _$ViewOrdersStateCopyWithImpl<$Res, _$ViewCartImpl>
    implements _$$ViewCartImplCopyWith<$Res> {
  __$$ViewCartImplCopyWithImpl(
      _$ViewCartImpl _value, $Res Function(_$ViewCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
  }) {
    return _then(_$ViewCartImpl(
      orderList: null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$ViewCartImpl implements _ViewCart {
  const _$ViewCartImpl({required final List<OrderModel> orderList})
      : _orderList = orderList;

  final List<OrderModel> _orderList;
  @override
  List<OrderModel> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  String toString() {
    return 'ViewOrdersState.dataLoaded(orderList: $orderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewCartImpl &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewCartImplCopyWith<_$ViewCartImpl> get copyWith =>
      __$$ViewCartImplCopyWithImpl<_$ViewCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderModel> orderList) dataLoaded,
    required TResult Function(bool error) error,
  }) {
    return dataLoaded(orderList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderModel> orderList)? dataLoaded,
    TResult? Function(bool error)? error,
  }) {
    return dataLoaded?.call(orderList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderModel> orderList)? dataLoaded,
    TResult Function(bool error)? error,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(orderList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ViewCart value) dataLoaded,
    required TResult Function(ViewOrdersStateError value) error,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ViewCart value)? dataLoaded,
    TResult? Function(ViewOrdersStateError value)? error,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ViewCart value)? dataLoaded,
    TResult Function(ViewOrdersStateError value)? error,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _ViewCart implements ViewOrdersState {
  const factory _ViewCart({required final List<OrderModel> orderList}) =
      _$ViewCartImpl;

  List<OrderModel> get orderList;
  @JsonKey(ignore: true)
  _$$ViewCartImplCopyWith<_$ViewCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewOrdersStateErrorImplCopyWith<$Res> {
  factory _$$ViewOrdersStateErrorImplCopyWith(_$ViewOrdersStateErrorImpl value,
          $Res Function(_$ViewOrdersStateErrorImpl) then) =
      __$$ViewOrdersStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool error});
}

/// @nodoc
class __$$ViewOrdersStateErrorImplCopyWithImpl<$Res>
    extends _$ViewOrdersStateCopyWithImpl<$Res, _$ViewOrdersStateErrorImpl>
    implements _$$ViewOrdersStateErrorImplCopyWith<$Res> {
  __$$ViewOrdersStateErrorImplCopyWithImpl(_$ViewOrdersStateErrorImpl _value,
      $Res Function(_$ViewOrdersStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ViewOrdersStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ViewOrdersStateErrorImpl implements ViewOrdersStateError {
  const _$ViewOrdersStateErrorImpl({required this.error});

  @override
  final bool error;

  @override
  String toString() {
    return 'ViewOrdersState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewOrdersStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewOrdersStateErrorImplCopyWith<_$ViewOrdersStateErrorImpl>
      get copyWith =>
          __$$ViewOrdersStateErrorImplCopyWithImpl<_$ViewOrdersStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderModel> orderList) dataLoaded,
    required TResult Function(bool error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderModel> orderList)? dataLoaded,
    TResult? Function(bool error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderModel> orderList)? dataLoaded,
    TResult Function(bool error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ViewCart value) dataLoaded,
    required TResult Function(ViewOrdersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ViewCart value)? dataLoaded,
    TResult? Function(ViewOrdersStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ViewCart value)? dataLoaded,
    TResult Function(ViewOrdersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ViewOrdersStateError implements ViewOrdersState {
  const factory ViewOrdersStateError({required final bool error}) =
      _$ViewOrdersStateErrorImpl;

  bool get error;
  @JsonKey(ignore: true)
  _$$ViewOrdersStateErrorImplCopyWith<_$ViewOrdersStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
