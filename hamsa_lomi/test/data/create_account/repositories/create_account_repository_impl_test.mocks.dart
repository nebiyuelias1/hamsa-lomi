// Mocks generated by Mockito 5.0.10 from annotations
// in hamsa_lomi/test/data/create_account/repositories/create_account_repository_impl_test.dart.
// Do not manually edit this file.

// Dart imports:
import 'dart:async' as _i4;

// Package imports:
import 'package:mockito/mockito.dart' as _i1;

// Project imports:
import 'package:hamsa_lomi/data/create_account/models/user_model.dart' as _i5;
import 'package:hamsa_lomi/domain/create_account/entities/user.dart' as _i2;

import 'package:hamsa_lomi/data/create_account/data_sources/create_account_data_source.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeUser extends _i1.Fake implements _i2.User {}

/// A class which mocks [CreateAccountDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreateAccountDataSource extends _i1.Mock
    implements _i3.CreateAccountDataSource {
  MockCreateAccountDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.User> createAccount(_i5.UserModel? userModel) =>
      (super.noSuchMethod(Invocation.method(#createAccount, [userModel]),
              returnValue: Future<_i2.User>.value(_FakeUser()))
          as _i4.Future<_i2.User>);
}
