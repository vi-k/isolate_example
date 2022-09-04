// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Command _$CommandFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'echo':
      return _Echo.fromJson(json);
    case 'ls':
      return _Ls.fromJson(json);
    case 'nothing':
      return _Nothing.fromJson(json);
    case 'dataHandle':
      return _DataHandle.fromJson(json);
    case 'exit':
      return _Exit.fromJson(json);
    case 'error':
      return _Error.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Command',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Command {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) echo,
    required TResult Function(String? mask) ls,
    required TResult Function() nothing,
    required TResult Function() dataHandle,
    required TResult Function() exit,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Echo value) echo,
    required TResult Function(_Ls value) ls,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_DataHandle value) dataHandle,
    required TResult Function(_Exit value) exit,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandCopyWith<$Res> {
  factory $CommandCopyWith(Command value, $Res Function(Command) then) =
      _$CommandCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommandCopyWithImpl<$Res> implements $CommandCopyWith<$Res> {
  _$CommandCopyWithImpl(this._value, this._then);

  final Command _value;
  // ignore: unused_field
  final $Res Function(Command) _then;
}

/// @nodoc
abstract class _$$_EchoCopyWith<$Res> {
  factory _$$_EchoCopyWith(_$_Echo value, $Res Function(_$_Echo) then) =
      __$$_EchoCopyWithImpl<$Res>;
  $Res call({String string});
}

/// @nodoc
class __$$_EchoCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$_EchoCopyWith<$Res> {
  __$$_EchoCopyWithImpl(_$_Echo _value, $Res Function(_$_Echo) _then)
      : super(_value, (v) => _then(v as _$_Echo));

  @override
  _$_Echo get _value => super._value as _$_Echo;

  @override
  $Res call({
    Object? string = freezed,
  }) {
    return _then(_$_Echo(
      string == freezed
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Echo extends _Echo {
  const _$_Echo(this.string, {final String? $type})
      : $type = $type ?? 'echo',
        super._();

  factory _$_Echo.fromJson(Map<String, dynamic> json) => _$$_EchoFromJson(json);

  @override
  final String string;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Echo &&
            const DeepCollectionEquality().equals(other.string, string));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(string));

  @JsonKey(ignore: true)
  @override
  _$$_EchoCopyWith<_$_Echo> get copyWith =>
      __$$_EchoCopyWithImpl<_$_Echo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) echo,
    required TResult Function(String? mask) ls,
    required TResult Function() nothing,
    required TResult Function() dataHandle,
    required TResult Function() exit,
    required TResult Function() error,
  }) {
    return echo(string);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
  }) {
    return echo?.call(string);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (echo != null) {
      return echo(string);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Echo value) echo,
    required TResult Function(_Ls value) ls,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_DataHandle value) dataHandle,
    required TResult Function(_Exit value) exit,
    required TResult Function(_Error value) error,
  }) {
    return echo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
  }) {
    return echo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (echo != null) {
      return echo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_EchoToJson(
      this,
    );
  }
}

abstract class _Echo extends Command {
  const factory _Echo(final String string) = _$_Echo;
  const _Echo._() : super._();

  factory _Echo.fromJson(Map<String, dynamic> json) = _$_Echo.fromJson;

  String get string;
  @JsonKey(ignore: true)
  _$$_EchoCopyWith<_$_Echo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LsCopyWith<$Res> {
  factory _$$_LsCopyWith(_$_Ls value, $Res Function(_$_Ls) then) =
      __$$_LsCopyWithImpl<$Res>;
  $Res call({String? mask});
}

/// @nodoc
class __$$_LsCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$_LsCopyWith<$Res> {
  __$$_LsCopyWithImpl(_$_Ls _value, $Res Function(_$_Ls) _then)
      : super(_value, (v) => _then(v as _$_Ls));

  @override
  _$_Ls get _value => super._value as _$_Ls;

  @override
  $Res call({
    Object? mask = freezed,
  }) {
    return _then(_$_Ls(
      mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ls extends _Ls {
  const _$_Ls([this.mask, final String? $type])
      : $type = $type ?? 'ls',
        super._();

  factory _$_Ls.fromJson(Map<String, dynamic> json) => _$$_LsFromJson(json);

  @override
  final String? mask;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ls &&
            const DeepCollectionEquality().equals(other.mask, mask));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mask));

  @JsonKey(ignore: true)
  @override
  _$$_LsCopyWith<_$_Ls> get copyWith =>
      __$$_LsCopyWithImpl<_$_Ls>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) echo,
    required TResult Function(String? mask) ls,
    required TResult Function() nothing,
    required TResult Function() dataHandle,
    required TResult Function() exit,
    required TResult Function() error,
  }) {
    return ls(mask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
  }) {
    return ls?.call(mask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (ls != null) {
      return ls(mask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Echo value) echo,
    required TResult Function(_Ls value) ls,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_DataHandle value) dataHandle,
    required TResult Function(_Exit value) exit,
    required TResult Function(_Error value) error,
  }) {
    return ls(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
  }) {
    return ls?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (ls != null) {
      return ls(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LsToJson(
      this,
    );
  }
}

abstract class _Ls extends Command {
  const factory _Ls([final String? mask]) = _$_Ls;
  const _Ls._() : super._();

  factory _Ls.fromJson(Map<String, dynamic> json) = _$_Ls.fromJson;

  String? get mask;
  @JsonKey(ignore: true)
  _$$_LsCopyWith<_$_Ls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NothingCopyWith<$Res> {
  factory _$$_NothingCopyWith(
          _$_Nothing value, $Res Function(_$_Nothing) then) =
      __$$_NothingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NothingCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$_NothingCopyWith<$Res> {
  __$$_NothingCopyWithImpl(_$_Nothing _value, $Res Function(_$_Nothing) _then)
      : super(_value, (v) => _then(v as _$_Nothing));

  @override
  _$_Nothing get _value => super._value as _$_Nothing;
}

/// @nodoc
@JsonSerializable()
class _$_Nothing extends _Nothing {
  const _$_Nothing({final String? $type})
      : $type = $type ?? 'nothing',
        super._();

  factory _$_Nothing.fromJson(Map<String, dynamic> json) =>
      _$$_NothingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Nothing);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) echo,
    required TResult Function(String? mask) ls,
    required TResult Function() nothing,
    required TResult Function() dataHandle,
    required TResult Function() exit,
    required TResult Function() error,
  }) {
    return nothing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
  }) {
    return nothing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (nothing != null) {
      return nothing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Echo value) echo,
    required TResult Function(_Ls value) ls,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_DataHandle value) dataHandle,
    required TResult Function(_Exit value) exit,
    required TResult Function(_Error value) error,
  }) {
    return nothing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
  }) {
    return nothing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (nothing != null) {
      return nothing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NothingToJson(
      this,
    );
  }
}

abstract class _Nothing extends Command {
  const factory _Nothing() = _$_Nothing;
  const _Nothing._() : super._();

  factory _Nothing.fromJson(Map<String, dynamic> json) = _$_Nothing.fromJson;
}

/// @nodoc
abstract class _$$_DataHandleCopyWith<$Res> {
  factory _$$_DataHandleCopyWith(
          _$_DataHandle value, $Res Function(_$_DataHandle) then) =
      __$$_DataHandleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataHandleCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$_DataHandleCopyWith<$Res> {
  __$$_DataHandleCopyWithImpl(
      _$_DataHandle _value, $Res Function(_$_DataHandle) _then)
      : super(_value, (v) => _then(v as _$_DataHandle));

  @override
  _$_DataHandle get _value => super._value as _$_DataHandle;
}

/// @nodoc
@JsonSerializable()
class _$_DataHandle extends _DataHandle {
  const _$_DataHandle({final String? $type})
      : $type = $type ?? 'dataHandle',
        super._();

  factory _$_DataHandle.fromJson(Map<String, dynamic> json) =>
      _$$_DataHandleFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataHandle);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) echo,
    required TResult Function(String? mask) ls,
    required TResult Function() nothing,
    required TResult Function() dataHandle,
    required TResult Function() exit,
    required TResult Function() error,
  }) {
    return dataHandle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
  }) {
    return dataHandle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (dataHandle != null) {
      return dataHandle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Echo value) echo,
    required TResult Function(_Ls value) ls,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_DataHandle value) dataHandle,
    required TResult Function(_Exit value) exit,
    required TResult Function(_Error value) error,
  }) {
    return dataHandle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
  }) {
    return dataHandle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (dataHandle != null) {
      return dataHandle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataHandleToJson(
      this,
    );
  }
}

abstract class _DataHandle extends Command {
  const factory _DataHandle() = _$_DataHandle;
  const _DataHandle._() : super._();

  factory _DataHandle.fromJson(Map<String, dynamic> json) =
      _$_DataHandle.fromJson;
}

/// @nodoc
abstract class _$$_ExitCopyWith<$Res> {
  factory _$$_ExitCopyWith(_$_Exit value, $Res Function(_$_Exit) then) =
      __$$_ExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExitCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$_ExitCopyWith<$Res> {
  __$$_ExitCopyWithImpl(_$_Exit _value, $Res Function(_$_Exit) _then)
      : super(_value, (v) => _then(v as _$_Exit));

  @override
  _$_Exit get _value => super._value as _$_Exit;
}

/// @nodoc
@JsonSerializable()
class _$_Exit extends _Exit {
  const _$_Exit({final String? $type})
      : $type = $type ?? 'exit',
        super._();

  factory _$_Exit.fromJson(Map<String, dynamic> json) => _$$_ExitFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Exit);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) echo,
    required TResult Function(String? mask) ls,
    required TResult Function() nothing,
    required TResult Function() dataHandle,
    required TResult Function() exit,
    required TResult Function() error,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Echo value) echo,
    required TResult Function(_Ls value) ls,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_DataHandle value) dataHandle,
    required TResult Function(_Exit value) exit,
    required TResult Function(_Error value) error,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExitToJson(
      this,
    );
  }
}

abstract class _Exit extends Command {
  const factory _Exit() = _$_Exit;
  const _Exit._() : super._();

  factory _Exit.fromJson(Map<String, dynamic> json) = _$_Exit.fromJson;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc
@JsonSerializable()
class _$_Error extends _Error {
  const _$_Error({final String? $type})
      : $type = $type ?? 'error',
        super._();

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String string) echo,
    required TResult Function(String? mask) ls,
    required TResult Function() nothing,
    required TResult Function() dataHandle,
    required TResult Function() exit,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String string)? echo,
    TResult Function(String? mask)? ls,
    TResult Function()? nothing,
    TResult Function()? dataHandle,
    TResult Function()? exit,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Echo value) echo,
    required TResult Function(_Ls value) ls,
    required TResult Function(_Nothing value) nothing,
    required TResult Function(_DataHandle value) dataHandle,
    required TResult Function(_Exit value) exit,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Echo value)? echo,
    TResult Function(_Ls value)? ls,
    TResult Function(_Nothing value)? nothing,
    TResult Function(_DataHandle value)? dataHandle,
    TResult Function(_Exit value)? exit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorToJson(
      this,
    );
  }
}

abstract class _Error extends Command {
  const factory _Error() = _$_Error;
  const _Error._() : super._();

  factory _Error.fromJson(Map<String, dynamic> json) = _$_Error.fromJson;
}
