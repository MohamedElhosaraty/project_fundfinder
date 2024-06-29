part of 'similar_companies_cubit.dart';

sealed class SimilarCompaniesState {}

final class SimilarCompaniesInitial extends SimilarCompaniesState {}

final class SimilarCompaniesLoadedState extends SimilarCompaniesState {}

final class SimilarCompaniesSuccessState extends SimilarCompaniesState {

  final CompanyName company;

  SimilarCompaniesSuccessState({required this.company});
}

final class SimilarCompaniesFailureState extends SimilarCompaniesState {

  final String errorMessage;

  SimilarCompaniesFailureState({required this.errorMessage});
}
