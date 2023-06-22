import 'package:afghanistan_tourism_app/packages/dio/dio.dart';
import 'package:afghanistan_tourism_app/repository/exchange_rate_repository/models/exchange_rate_model.dart';
import 'package:dio/dio.dart';

Future<void> getRatesFromHost(
    Function(ExchangeRateModel) onSuccess, Function(String) onFailure) async {
  cancelToken = CancelToken();
  try {
    response = await dio.get(
        '$exchangeRateBaseAPIUrl?access_key=f346f22381284f52e9932f469585d90b',
        cancelToken: cancelToken);
    if (response!.statusCode == 200) {
      onSuccess(ExchangeRateModel.fromMap(
          (response!.data as Map<String, dynamic>)['rates']));
    } else {
      onFailure('LocaleKeys.error_on_load_data.tr()');
    }
  } on DioException catch (e) {
    if (e.type == DioExceptionType.cancel) {
      if (!cancelToken.isCancelled) {
        cancelToken.cancel();
      }
      return;
    }
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout) {
      onFailure('connection_timeout');
      return;
    }
    onFailure('LocaleKeys.dio_error.tr()');
  } on Exception catch (e) {
    onFailure(e.toString());
  }
}
