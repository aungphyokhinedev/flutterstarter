import 'dart:convert';

import 'package:global_configuration/global_configuration.dart';
import 'package:http_middleware/http_middleware.dart';
class CustomHttp
{
  static String accessToken;
  static HttpWithMiddleware http =  HttpWithMiddleware.build(middlewares: [
    Logger(),
    AddBarrier()
    ]);
  

}

class Logger extends MiddlewareContract {
  @override
  interceptRequest({RequestData data}) {
    print("Method: ${data.method}");
    print("Url: ${data.url}");
    print("Body: ${data.body}");
  }

  @override
  interceptResponse({ResponseData data}) {
    print("Status Code: ${data.statusCode}");
    print("Method: ${data.method}");
    print("Url: ${data.url}");
    print("Body: ${data.body}");
    print("Headers: ${data.headers}");
  }
}

class AddBarrier extends MiddlewareContract {
  @override
  interceptRequest({RequestData data}) {
    data.url = GlobalConfiguration().getString("baseUrl")  + data.url;
    data.headers['authorization'] = CustomHttp.accessToken;

    //unless raw request
    if(data.headers['Type'] != 'raw'){
       data.headers['Content-Type'] = 'application/json';
       data.body = JsonEncoder().convert(data.body);
    }
  }

  @override
  interceptResponse({ResponseData data}) {
    var _result = JsonDecoder().convert(data.body);
    print(_result);
  }
}