import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fundfinder/core/api/api_consumer.dart';
import 'package:project_fundfinder/core/errors/exception.dart';
import 'package:project_fundfinder/model/company_model.dart';

part 'similar_companies_state.dart';

class SimilarCompaniesCubit extends Cubit<SimilarCompaniesState> {
  SimilarCompaniesCubit({required this.api}) : super(SimilarCompaniesInitial());

  final ApiConsumer api;
  CompanyName? name;

  getSimilarCompanies({required String nameCompany}) async
  {
    try {
      emit(SimilarCompaniesLoadedState());
      final response = await api.get("recommend_investor?investor=$nameCompany",
      );

      name = CompanyName.fromJson(response);
      print("-------------------------$name");

      emit(SimilarCompaniesSuccessState(company: name!));
    } on ServerException catch (e) {
      emit(SimilarCompaniesFailureState(errorMessage: e.errorModel.message));
    }
  }
}
