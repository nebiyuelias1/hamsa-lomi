// Mocks generated by Mockito 5.0.10 from annotations
// in hamsa_lomi/test/domain/create_account/use_cases/create_account_use_case_test.dart.
// Do not manually edit this file.

// Dart imports:
import 'dart:async' as _i4;

// Package imports:
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// Project imports:
import 'package:hamsa_lomi/domain/core/failure.dart' as _i5;
import 'package:hamsa_lomi/domain/create_account/entities/user.dart' as _i6;

import 'package:hamsa_lomi/domain/create_account/repositories/create_account_repository.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither<L, R> extends _i1.Fake implements _i2.Either<L, R> {
  @override
  String toString() => super.toString();
}

/// A class which mocks [CreateAccountRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreateAccountRepository extends _i1.Mock
    implements _i3.CreateAccountRepository {
  MockCreateAccountRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.User>> createAccount(_i6.User? user) =>
      (super.noSuchMethod(Invocation.method(#createAccount, [user]),
              returnValue: Future<_i2.Either<_i5.Failure, _i6.User>>.value(
                  _FakeEither<_i5.Failure, _i6.User>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i6.User>>);
}
