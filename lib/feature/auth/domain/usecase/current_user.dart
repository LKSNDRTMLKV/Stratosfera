import 'package:stratosfera/core/error/failure.dart';
import 'package:stratosfera/core/usecase/usecase.dart';
import 'package:stratosfera/core/common/entity/user.dart';
import 'package:stratosfera/feature/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class CurrentUser implements UseCase<User, NoParams> {
  final AuthRepository authRepository;
  CurrentUser(this.authRepository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await authRepository.currentUser();
  }
}