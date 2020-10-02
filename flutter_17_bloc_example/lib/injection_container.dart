import 'package:flutter_17_bloc_example/data/datasources/remote/quote_remote_datasource.dart';
import 'package:flutter_17_bloc_example/data/repositories/quote_repository_impl.dart';
import 'package:flutter_17_bloc_example/domain/repositories/quote_repository.dart';
import 'package:flutter_17_bloc_example/domain/usecase/GetQuoteOfTheDayUseCase.dart';
import 'package:flutter_17_bloc_example/screens/bloc/quote_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  // bloc
  sl.registerFactory(() => QuoteBloc(useCase: sl()));

  // usecase
  sl.registerLazySingleton(
      () => GetQuoteOfTheDayUseCase(quoteRepository: sl()));

  // repository
  sl.registerLazySingleton<QuoteRepository>(
      () => QuoteRepositoryImpl(remoteDatasource: sl()));

  // datasource
  sl.registerLazySingleton<QuoteRemoteDatasource>(
      () => QuoteRemoteDatasourceImpl(client: sl()));

  // external
  sl.registerLazySingleton(() => http.Client());
}
