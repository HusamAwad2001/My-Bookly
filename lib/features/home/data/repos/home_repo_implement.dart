import 'package:dartz/dartz.dart';
import 'package:my_bookly/core/errors/failures.dart';
import 'package:my_bookly/features/home/data/models/book_model/book_model.dart';
import '../../../../core/utils/api_service.dart';
import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');
      List<BookModel> books = [];
      for(var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch (error) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
