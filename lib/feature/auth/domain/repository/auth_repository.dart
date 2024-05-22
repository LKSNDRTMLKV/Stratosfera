import 'package:stratosfera/core/error/failure.dart';
import 'package:stratosfera/core/common/entity/user.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, User>> registerWithEmailPassword({
    required String username,
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> currentUser();
}