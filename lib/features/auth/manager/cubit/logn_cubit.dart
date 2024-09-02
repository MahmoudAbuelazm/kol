// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// import '../../../../data/repository/get_client_data/get_client_data.dart';

// part 'logn_state.dart';

// class LognCubit extends Cubit<LognState> {
//   LognCubit() : super(LognInitial());
//   final GetClientData _getClientData = GetClientData();


//   Future<void> getClientData(String clientId) async {
//     try {
//       emit(LognLoading());
//       final response = await _getClientData(clientId);
//       emit(LognLoaded(response));
//     } 
//   }on DioException catch (error, stackTrace) {
//       MyApplication.showToastView(message: error.message ?? "");
//       log(error.toString(), name: 'login - msg');
//       log(stackTrace.toString(), name: 'login - trace');
//       emit(LoginError());
//     } catch (error, stackTrace) {
//       log(error.toString(), name: 'login - msg');
//       log(stackTrace.toString(), name: 'login - trace');
//       emit(LoginError());
//     }

// }
