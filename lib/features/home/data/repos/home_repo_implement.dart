import 'package:dartz/dartz.dart';
import 'package:my_bookly/core/errors/failures.dart';
import 'package:my_bookly/features/home/data/models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
