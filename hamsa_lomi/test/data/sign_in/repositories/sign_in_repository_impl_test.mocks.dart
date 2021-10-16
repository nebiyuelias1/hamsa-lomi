// Mocks generated by Mockito 5.0.16 from annotations
// in hamsa_lomi/test/data/sign_in/repositories/sign_in_repository_impl_test.dart.
// Do not manually edit this file.

// Dart imports:
import 'dart:async' as _i3;

// Package imports:
import 'package:mockito/mockito.dart' as _i1;

import 'package:hamsa_lomi/data/sign_in/data_sources/sign_in_data_source.dart'
    as _i2;
import 'package:hamsa_lomi/domain/sign_in/entities/verify_phone_number_param.dart'
    as _i4;
import 'package:hamsa_lomi/domain/sign_in/entities/verify_sms_code_param.dart'
    as _i5;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [SignInDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignInDataSource extends _i1.Mock implements _i2.SignInDataSource {
  MockSignInDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<void> signInWithEmail(String? email, String? password) => (super
      .noSuchMethod(Invocation.method(#signInWithEmail, [email, password]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> signInWithPhone(_i4.VerifyPhoneNumberParam? param) =>
      (super.noSuchMethod(Invocation.method(#signInWithPhone, [param]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> verifySmsCode(_i5.VerifySmsCodeParam? param) =>
      (super.noSuchMethod(Invocation.method(#verifySmsCode, [param]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  String toString() => super.toString();
}
