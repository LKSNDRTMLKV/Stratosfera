import 'dart:io';
import 'package:stratosfera/core/error/failure.dart';
import 'package:stratosfera/core/usecase/usecase.dart';
import 'package:stratosfera/feature/blog/domain/entity/blog.dart';
import 'package:stratosfera/feature/blog/domain/repository/blog_repository.dart';
import 'package:fpdart/fpdart.dart';

class UploadBlog implements UseCase<Blog, UploadBlogParams> {
  final BlogRepository blogRepository;
  UploadBlog(this.blogRepository);

  @override
  Future<Either<Failure, Blog>> call(UploadBlogParams params) async {
    return await blogRepository.uploadBlog(
      image: params.image,
      title: params.title,
      content: params.content,
      userId: params.userId,
      topics: params.topics,
    );
  }
}

class UploadBlogParams {
  final String userId;
  final String title;
  final String content;
  final File image;
  final List<String> topics;

  UploadBlogParams({
    required this.userId,
    required this.title,
    required this.content,
    required this.image,
    required this.topics,
  });
}