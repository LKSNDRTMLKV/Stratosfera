import 'package:stratosfera/core/error/failure.dart';
import 'package:stratosfera/core/usecase/usecase.dart';
import 'package:stratosfera/feature/blog/domain/entity/blog.dart';
import 'package:stratosfera/feature/blog/domain/repository/blog_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetAllBlogs implements UseCase<List<Blog>, NoParams> {
  final BlogRepository blogRepository;
  GetAllBlogs(this.blogRepository);

  @override
  Future<Either<Failure, List<Blog>>> call(NoParams params) async {
    return await blogRepository.getAllBlogs();
  }
}