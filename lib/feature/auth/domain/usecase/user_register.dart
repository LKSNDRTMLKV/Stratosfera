import 'package:stratosfera/core/error/failure.dart';
import 'package:stratosfera/core/usecase/usecase.dart';
import 'package:stratosfera/core/common/entity/user.dart';
import 'package:stratosfera/feature/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserRegister implements UseCase<User, UserRegisterParams> {
  final AuthRepository authRepository;
  const UserRegister(this.authRepository);

  @override
  Future<Either<Failure, User>> call(UserRegisterParams params) async {
    return await authRepository.registerWithEmailPassword(
      username: params.username,
      email: params.email,
      password: params.password,
    );
  }
}

class UserRegisterParams {
  final String email;
  final String password;
  final String username;
  UserRegisterParams({
    required this.email,
    required this.password,
    required this.username,
  });
}