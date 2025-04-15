// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuestionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialQuestionsEvent value) initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialQuestionsEvent value)? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialQuestionsEvent value)? initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsEventCopyWith<$Res> {
  factory $QuestionsEventCopyWith(
    QuestionsEvent value,
    $Res Function(QuestionsEvent) then,
  ) = _$QuestionsEventCopyWithImpl<$Res, QuestionsEvent>;
}

/// @nodoc
class _$QuestionsEventCopyWithImpl<$Res, $Val extends QuestionsEvent>
    implements $QuestionsEventCopyWith<$Res> {
  _$QuestionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialQuestionsEventImplCopyWith<$Res> {
  factory _$$InitialQuestionsEventImplCopyWith(
    _$InitialQuestionsEventImpl value,
    $Res Function(_$InitialQuestionsEventImpl) then,
  ) = __$$InitialQuestionsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialQuestionsEventImplCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res, _$InitialQuestionsEventImpl>
    implements _$$InitialQuestionsEventImplCopyWith<$Res> {
  __$$InitialQuestionsEventImplCopyWithImpl(
    _$InitialQuestionsEventImpl _value,
    $Res Function(_$InitialQuestionsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuestionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialQuestionsEventImpl implements _InitialQuestionsEvent {
  const _$InitialQuestionsEventImpl();

  @override
  String toString() {
    return 'QuestionsEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialQuestionsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({required TResult Function() initial}) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({TResult? Function()? initial}) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(_InitialQuestionsEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialQuestionsEvent value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialQuestionsEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialQuestionsEvent implements QuestionsEvent {
  const factory _InitialQuestionsEvent() = _$InitialQuestionsEventImpl;
}

/// @nodoc
mixin _$QuestionsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<QuestionData>? get questions => throw _privateConstructorUsedError;

  /// Create a copy of QuestionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionsStateCopyWith<QuestionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsStateCopyWith<$Res> {
  factory $QuestionsStateCopyWith(
    QuestionsState value,
    $Res Function(QuestionsState) then,
  ) = _$QuestionsStateCopyWithImpl<$Res, QuestionsState>;
  @useResult
  $Res call({BlocStatus status, List<QuestionData>? questions});
}

/// @nodoc
class _$QuestionsStateCopyWithImpl<$Res, $Val extends QuestionsState>
    implements $QuestionsStateCopyWith<$Res> {
  _$QuestionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? questions = freezed}) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as BlocStatus,
            questions:
                freezed == questions
                    ? _value.questions
                    : questions // ignore: cast_nullable_to_non_nullable
                        as List<QuestionData>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuestionsStateImplCopyWith<$Res>
    implements $QuestionsStateCopyWith<$Res> {
  factory _$$QuestionsStateImplCopyWith(
    _$QuestionsStateImpl value,
    $Res Function(_$QuestionsStateImpl) then,
  ) = __$$QuestionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<QuestionData>? questions});
}

/// @nodoc
class __$$QuestionsStateImplCopyWithImpl<$Res>
    extends _$QuestionsStateCopyWithImpl<$Res, _$QuestionsStateImpl>
    implements _$$QuestionsStateImplCopyWith<$Res> {
  __$$QuestionsStateImplCopyWithImpl(
    _$QuestionsStateImpl _value,
    $Res Function(_$QuestionsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuestionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? questions = freezed}) {
    return _then(
      _$QuestionsStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as BlocStatus,
        questions:
            freezed == questions
                ? _value._questions
                : questions // ignore: cast_nullable_to_non_nullable
                    as List<QuestionData>?,
      ),
    );
  }
}

/// @nodoc

class _$QuestionsStateImpl implements _QuestionsState {
  const _$QuestionsStateImpl({
    this.status = BlocStatus.initial,
    final List<QuestionData>? questions = const [],
  }) : _questions = questions;

  @override
  @JsonKey()
  final BlocStatus status;
  final List<QuestionData>? _questions;
  @override
  @JsonKey()
  List<QuestionData>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionsState(status: $status, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._questions,
              _questions,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_questions),
  );

  /// Create a copy of QuestionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsStateImplCopyWith<_$QuestionsStateImpl> get copyWith =>
      __$$QuestionsStateImplCopyWithImpl<_$QuestionsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _QuestionsState implements QuestionsState {
  const factory _QuestionsState({
    final BlocStatus status,
    final List<QuestionData>? questions,
  }) = _$QuestionsStateImpl;

  @override
  BlocStatus get status;
  @override
  List<QuestionData>? get questions;

  /// Create a copy of QuestionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionsStateImplCopyWith<_$QuestionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
