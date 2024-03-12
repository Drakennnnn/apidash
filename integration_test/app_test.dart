import 'package:apidash/utils/header_utils.dart';
import 'package:integration_test/integration_test.dart'; // Import your widgets file
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'package:apidash/consts.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:apidash/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:apidash/utils/utils.dart';
import 'package:apidash/models/models.dart';
import 'package:multi_split_view/multi_split_view.dart';
import '../test/request_models.dart';
import '../test/test_consts.dart';
import '../test/test_utilities.dart';
import 'package:http/http.dart' as http;
import 'package:apidash/codegen/codegen.dart';
import 'package:apidash/codegen/dart/http.dart';
import 'package:apidash/codegen/others/har.dart';
import 'package:apidash/codegen/js/axios.dart';
import 'package:apidash/codegen/js/fetch.dart';
import 'package:apidash/codegen/kotlin/okhttp.dart';
import 'package:apidash/codegen/python/http_client.dart';
import 'package:apidash/codegen/python/requests.dart';
import 'package:apidash/codegen/others/curl.dart';


void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized ();
    
  group('Curl Codegen', () {
    final curlCodeGen = cURLCodeGen();
   
   group('GET Request', () {
    testWidgets('GET 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""curl --url 'https://api.foss42.com'""";
        expect(curlCodeGen.getCode(requestModelGet1, "https"), expectedCode);
      });
    });

    testWidgets('GET 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.foss42.com/country/data?code=US'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet2, "https"), expectedCode);
      });
    });

    testWidgets('GET 3 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.foss42.com/country/data?code=IND'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet3, "https"), expectedCode);
      });
    });

    testWidgets('GET 4 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.foss42.com/humanize/social?num=8700000&digits=3&system=SS&add_space=true&trailing_zeros=true'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet4, "https"), expectedCode);
      });
    });

    testWidgets('GET 5 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.github.com/repos/foss42/apidash' \
  --header 'User-Agent: Test Agent'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet5, "https"), expectedCode);
      });
    });

    testWidgets('GET 6 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.github.com/repos/foss42/apidash?raw=true' \
  --header 'User-Agent: Test Agent'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet6, "https"), expectedCode);
      });
    });

    testWidgets('GET 7 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode = r"""curl --url 'https://api.foss42.com'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet7, "https"), expectedCode);
      });
    });

    testWidgets('GET 8 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.github.com/repos/foss42/apidash?raw=true' \
  --header 'User-Agent: Test Agent'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet8, "https"), expectedCode);
      });
    });

    testWidgets('GET 9 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.foss42.com/humanize/social?num=8700000&add_space=true'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet9, "https"), expectedCode);
      });
    });

    testWidgets('GET 10 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.foss42.com/humanize/social' \
  --header 'User-Agent: Test Agent'""";

        // Act & Assert
        expect(
            curlCodeGen.getCode(
              requestModelGet10,
              "https",
            ),
            expectedCode);
      });
    });

    testWidgets('GET 11 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.foss42.com/humanize/social?num=8700000&digits=3' \
  --header 'User-Agent: Test Agent'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet11, "https"), expectedCode);
      });
    });

    testWidgets('GET 12 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --url 'https://api.foss42.com/humanize/social'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelGet12, "https"), expectedCode);
      });
    });
  });

  group('HEAD Request', () {
    testWidgets('HEAD 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --head --url 'https://api.foss42.com'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelHead1, "https"), expectedCode);
      });
    });

    testWidgets('HEAD 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --head --url 'http://api.foss42.com'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelHead2, "http"), expectedCode);
      });
    });
  });

  group('POST Request', () {
    testWidgets('POST 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --request POST \
 --url 'https://api.foss42.com/case/lower' \
  --header 'Content-Type: text/plain' \
  --data '{
"text": "I LOVE Flutter"
}'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelPost1, "https"), expectedCode);
      });
    });

    testWidgets('POST 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --request POST \
 --url 'https://api.foss42.com/case/lower' \
  --header 'Content-Type: application/json' \
  --data '{
"text": "I LOVE Flutter"
}'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelPost2, "https"), expectedCode);
      });
    });

    testWidgets('POST 3 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --request POST \
 --url 'https://api.foss42.com/case/lower' \
  --header 'Content-Type: application/json' \
  --header 'User-Agent: Test Agent' \
  --data '{
"text": "I LOVE Flutter"
}'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelPost3, "https"), expectedCode);
      });
    });
  });

  group('PUT Request', () {
    testWidgets('PUT 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --request PUT \
 --url 'https://reqres.in/api/users/2' \
  --header 'Content-Type: application/json' \
  --data '{
"name": "morpheus",
"job": "zion resident"
}'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelPut1, "https"), expectedCode);
      });
    });
  });

  group('PATCH Request', () {
    testWidgets('PATCH 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --request PATCH \
 --url 'https://reqres.in/api/users/2' \
  --header 'Content-Type: application/json' \
  --data '{
"name": "marfeus",
"job": "accountant"
}'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelPatch1, "https"), expectedCode);
      });
    });
  });

  group('DELETE Request', () {
    testWidgets('DELETE 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --request DELETE \
 --url 'https://reqres.in/api/users/2'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelDelete1, "https"), expectedCode);
      });
    });

    testWidgets('DELETE 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        // Arrange
        const expectedCode =
            r"""curl --request DELETE \
 --url 'https://reqres.in/api/users/2' \
  --header 'Content-Type: application/json' \
  --data '{
"name": "marfeus",
"job": "accountant"
}'""";

        // Act & Assert
        expect(curlCodeGen.getCode(requestModelDelete2, "https"), expectedCode);
      });
    });
  });
   });

  group('Python Request', () {
     final pythonRequestsCodeGen = PythonRequestsCodeGen();


   group('GET Request', () {
    testWidgets('GET 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import requests

url = 'https://api.foss42.com'

response = requests.get(url)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com/country/data'

params = {
           "code": "US"
         }

response = requests.get(url, params=params)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet2, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 3 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com/country/data'

params = {
           "code": "IND"
         }

response = requests.get(url, params=params)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet3, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 4 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com/humanize/social'

params = {
           "num": "8700000",
           "digits": "3",
           "system": "SS",
           "add_space": "true",
           "trailing_zeros": "true"
         }

response = requests.get(url, params=params)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet4, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 5 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.github.com/repos/foss42/apidash'

headers = {
            "User-Agent": "Test Agent"
          }

response = requests.get(url, headers=headers)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet5, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 6 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.github.com/repos/foss42/apidash'

params = {
           "raw": "true"
         }

headers = {
            "User-Agent": "Test Agent"
          }

response = requests.get(url, params=params, headers=headers)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet6, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 7 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com'

response = requests.get(url)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet7, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 8 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import requests

url = 'https://api.github.com/repos/foss42/apidash'

params = {
           "raw": "true"
         }

headers = {
            "User-Agent": "Test Agent"
          }

response = requests.get(url, params=params, headers=headers)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet8, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 9 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import requests

url = 'https://api.foss42.com/humanize/social'

params = {
           "num": "8700000",
           "add_space": "true"
         }

response = requests.get(url, params=params)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet9, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 10 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import requests

url = 'https://api.foss42.com/humanize/social'

headers = {
            "User-Agent": "Test Agent"
          }

response = requests.get(url, headers=headers)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet10, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 11 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com/humanize/social'

params = {
           "num": "8700000",
           "digits": "3"
         }

headers = {
            "User-Agent": "Test Agent"
          }

response = requests.get(url, params=params, headers=headers)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet11, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 12 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com/humanize/social'

response = requests.get(url)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelGet12, "https"),
          expectedCode,
        );
      });
    });
   });

   group('HEAD Request', () {
    testWidgets('HEAD 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com'

response = requests.head(url)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelHead1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('HEAD 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'http://api.foss42.com'

response = requests.head(url)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelHead2, "http"),
          expectedCode,
        );
      });
    });
   });

    group('POST Request', () {
    testWidgets('POST 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com/case/lower'

payload = r'''{
"text": "I LOVE Flutter"
}'''

headers = {
            "content-type": "text/plain"
          }

response = requests.post(url, data=payload, headers=headers)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelPost1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('POST 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com/case/lower'

payload = {
"text": "I LOVE Flutter"
}

response = requests.post(url, json=payload)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelPost2, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('POST 3 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import requests

url = 'https://api.foss42.com/case/lower'

payload = {
"text": "I LOVE Flutter"
}

headers = {
            "User-Agent": "Test Agent"
          }

response = requests.post(url, json=payload, headers=headers)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelPost3, "https"),
          expectedCode,
        );
      });
    });
  });

  group('PUT Request', () {
    testWidgets('PUT 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import requests

url = 'https://reqres.in/api/users/2'

payload = {
"name": "morpheus",
"job": "zion resident"
}

response = requests.put(url, json=payload)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelPut1, "https"),
          expectedCode,
        );
      });
    });
  });

  group('PATCH Request', () {
    testWidgets('PATCH 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import requests

url = 'https://reqres.in/api/users/2'

payload = {
"name": "marfeus",
"job": "accountant"
}

response = requests.patch(url, json=payload)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelPatch1, "https"),
          expectedCode,
        );
      });
    });
  });

  group('DELETE Request', () {
    testWidgets('DELETE 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import requests

url = 'https://reqres.in/api/users/2'

response = requests.delete(url)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelDelete1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('DELETE 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://reqres.in/api/users/2'

payload = {
"name": "marfeus",
"job": "accountant"
}

response = requests.delete(url, json=payload)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          pythonRequestsCodeGen.getCode(requestModelDelete2, "https"),
          expectedCode,
        );
      });
    });
  });
    });
 
  group('Python Http Client', () {
    final pythonHttpClientCodeGen = PythonHttpClientCodeGen();


    group('GET Request', () {
    testWidgets('GET 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "")

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client
from urllib.parse import urlencode

queryParams = {
                "code": "US"
              }
queryParamsStr = '?' + urlencode(queryParams)

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "/country/data" + queryParamsStr)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet2, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 3 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client
from urllib.parse import urlencode

queryParams = {
                "code": "IND"
              }
queryParamsStr = '?' + urlencode(queryParams)

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "/country/data" + queryParamsStr)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet3, "https"),
          expectedCode,
        );
      });
    });


    testWidgets('GET 4 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client
from urllib.parse import urlencode

queryParams = {
                "num": "8700000",
                "digits": "3",
                "system": "SS",
                "add_space": "true",
                "trailing_zeros": "true"
              }
queryParamsStr = '?' + urlencode(queryParams)

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "/humanize/social" + queryParamsStr)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet4, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 5 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client

headers = {
            "User-Agent": "Test Agent"
          }

conn = http.client.HTTPSConnection("api.github.com")
conn.request("GET", "/repos/foss42/apidash",
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet5, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 6 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client
from urllib.parse import urlencode

queryParams = {
                "raw": "true"
              }
queryParamsStr = '?' + urlencode(queryParams)

headers = {
            "User-Agent": "Test Agent"
          }

conn = http.client.HTTPSConnection("api.github.com")
conn.request("GET", "/repos/foss42/apidash" + queryParamsStr,
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet6, "https"),
          expectedCode,
        );
      });
    });

    group('GET Request', () {
    testWidgets('GET 7 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
         const expectedCode = r"""import http.client

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "")

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet7, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 8 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client
from urllib.parse import urlencode

queryParams = {
                "raw": "true"
              }
queryParamsStr = '?' + urlencode(queryParams)

headers = {
            "User-Agent": "Test Agent"
          }

conn = http.client.HTTPSConnection("api.github.com")
conn.request("GET", "/repos/foss42/apidash" + queryParamsStr,
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet8, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 9 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client
from urllib.parse import urlencode

queryParams = {
                "num": "8700000",
                "add_space": "true"
              }
queryParamsStr = '?' + urlencode(queryParams)

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "/humanize/social" + queryParamsStr)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet9, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 10 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client

headers = {
            "User-Agent": "Test Agent"
          }

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "/humanize/social",
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet10, "https"),
          expectedCode,
        );
      });
    });
  });

  testWidgets('GET 11 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client
from urllib.parse import urlencode

queryParams = {
                "num": "8700000",
                "digits": "3"
              }
queryParamsStr = '?' + urlencode(queryParams)

headers = {
            "User-Agent": "Test Agent"
          }

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "/humanize/social" + queryParamsStr,
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet11, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('GET 12 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "/humanize/social")

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelGet12, "https"),
          expectedCode,
        );
      });
    });
     });

   group('HEAD Request', () {
    testWidgets('HEAD 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("HEAD", "")

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelHead1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('HEAD 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client

conn = http.client.HTTPConnection("api.foss42.com")
conn.request("HEAD", "")

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelHead2, "http"),
          expectedCode,
        );
      });
    });
  });

  group('POST Request', () {
    testWidgets('POST 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client

body = r'''{
"text": "I LOVE Flutter"
}'''

headers = {
            "content-type": "text/plain"
          }

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("POST", "/case/lower",
              body= body,
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelPost1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('POST 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client

body = r'''{
"text": "I LOVE Flutter"
}'''

headers = {
            "content-type": "application/json"
          }

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("POST", "/case/lower",
              body= body,
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelPost2, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('POST 3 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client

body = r'''{
"text": "I LOVE Flutter"
}'''

headers = {
            "User-Agent": "Test Agent",
            "content-type": "application/json"
          }

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("POST", "/case/lower",
              body= body,
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelPost3, "https"),
          expectedCode,
        );
      });
    });
  });

  group('PUT Request', () {
    testWidgets('PUT 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
      const expectedCode = r"""import http.client

body = r'''{
"name": "morpheus",
"job": "zion resident"
}'''

headers = {
            "content-type": "application/json"
          }

conn = http.client.HTTPSConnection("reqres.in")
conn.request("PUT", "/api/users/2",
              body= body,
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelPut1, "https"),
          expectedCode,
        );
      });
    });
  });

  group('PATCH Request', () {
    testWidgets('PATCH 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client

body = r'''{
"name": "marfeus",
"job": "accountant"
}'''

headers = {
            "content-type": "application/json"
          }

conn = http.client.HTTPSConnection("reqres.in")
conn.request("PATCH", "/api/users/2",
              body= body,
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelPatch1, "https"),
          expectedCode,
        );
      });
    });
  });

  group('DELETE Request', () {
    testWidgets('DELETE 1 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
       const expectedCode = r"""import http.client

conn = http.client.HTTPSConnection("reqres.in")
conn.request("DELETE", "/api/users/2")

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelDelete1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('DELETE 2 Integration Test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client

body = r'''{
"name": "marfeus",
"job": "accountant"
}'''

headers = {
            "content-type": "application/json"
          }

conn = http.client.HTTPSConnection("reqres.in")
conn.request("DELETE", "/api/users/2",
              body= body,
              headers= headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          pythonHttpClientCodeGen.getCode(requestModelDelete2, "https"),
          expectedCode,
        );
      });
    });
  });
    });
  


  group('NodeJS Fetch', () {
    final fetchCodeGen = FetchCodeGen(isNodeJs: true);

    group('GET Request', () {
      testWidgets('GET 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";

          expect(fetchCodeGen.getCode(requestModelGet1, "https"), expectedCode);
        });
      });

      testWidgets('GET 2 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          // Arrange
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/country/data?code=US';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(fetchCodeGen.getCode(requestModelGet2, "https"), expectedCode);
        });
      });

      testWidgets('GET 3 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
           const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/country/data?code=IND';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(fetchCodeGen.getCode(requestModelGet3, "https"), expectedCode);
        });
      });

      testWidgets('GET 4 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/humanize/social?num=8700000&digits=3&system=SS&add_space=true&trailing_zeros=true';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(fetchCodeGen.getCode(requestModelGet4, "https"), expectedCode);
        });
      });

      testWidgets('GET 5 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.github.com/repos/foss42/apidash';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";

          expect(fetchCodeGen.getCode(requestModelGet5, "https"), expectedCode);
        });
      });

      testWidgets('GET 6 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.github.com/repos/foss42/apidash?raw=true';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(fetchCodeGen.getCode(requestModelGet6, "https"), expectedCode);
        });
      });

      testWidgets('GET 7 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
         const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(fetchCodeGen.getCode(requestModelGet7, "https"), expectedCode);
        });
      });

      testWidgets('GET 8 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.github.com/repos/foss42/apidash?raw=true';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(fetchCodeGen.getCode(requestModelGet8, "https"), expectedCode);
        });
      });

      testWidgets('GET 9 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/humanize/social?num=8700000&add_space=true';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(fetchCodeGen.getCode(requestModelGet9, "https"), expectedCode);
        });
      });

      testWidgets('GET 10 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          // Arrange
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/humanize/social';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelGet10, "https"),
            expectedCode,
          );
        });
      });

      testWidgets('GET 11 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
         const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/humanize/social?num=8700000&digits=3';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelGet11, "https"),
            expectedCode,
          );
        });
      });

      testWidgets('GET 12 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/humanize/social';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelGet12, "https"),
            expectedCode);
        });
      });
    });

    group('HEAD Request', () {
      testWidgets('HEAD 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
         const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com';

let options = {
  method: 'HEAD'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Act & Assert
          expect(
            fetchCodeGen.getCode(requestModelHead1, "https"),
            expectedCode,
          );
        });
      });

      testWidgets('HEAD 2 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
         const expectedCode = r"""import fetch from 'node-fetch';

let url = 'http://api.foss42.com';

let options = {
  method: 'HEAD'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelHead2, "http"),
            expectedCode,
          );
        });
      });
    });

    group('POST Request', () {
      testWidgets('POST 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
         const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/case/lower';

let options = {
  method: 'POST',
  headers: {
    "Content-Type": "text/plain"
  },
  body: 
"{\n\"text\": \"I LOVE Flutter\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelPost1, "https"),
            expectedCode,
          );
        });
      });

      testWidgets('POST 2 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/case/lower';

let options = {
  method: 'POST',
  headers: {
    "Content-Type": "application/json"
  },
  body: 
"{\n\"text\": \"I LOVE Flutter\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelPost2, "https"),
            expectedCode,
          );
        });
      });

      testWidgets('POST 3 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
         const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com/case/lower';

let options = {
  method: 'POST',
  headers: {
    "Content-Type": "application/json",
    "User-Agent": "Test Agent"
  },
  body: 
"{\n\"text\": \"I LOVE Flutter\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelPost3, "https"),
            expectedCode,
          );
        });
      });
    });

    group('PUT Request', () {
      testWidgets('PUT 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://reqres.in/api/users/2';

let options = {
  method: 'PUT',
  headers: {
    "Content-Type": "application/json"
  },
  body: 
"{\n\"name\": \"morpheus\",\n\"job\": \"zion resident\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelPut1, "https"),
            expectedCode,
          );
        });
      });
    });

    group('PATCH Request', () {
      testWidgets('PATCH 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
         const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://reqres.in/api/users/2';

let options = {
  method: 'PATCH',
  headers: {
    "Content-Type": "application/json"
  },
  body: 
"{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelPatch1, "https"),
            expectedCode,);
        });
      });
    });

    group('DELETE Request', () {
      testWidgets('DELETE 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://reqres.in/api/users/2';

let options = {
  method: 'DELETE'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelDelete1, "https"),
            expectedCode,
          );
        });
      });

      testWidgets('DELETE 2 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://reqres.in/api/users/2';

let options = {
  method: 'DELETE',
  headers: {
    "Content-Type": "application/json"
  },
  body: 
"{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          expect(
            fetchCodeGen.getCode(requestModelDelete2, "https"),
            expectedCode,
          );
        });
      });
    });
    });

  group('NodeJS Axios', () {
    final axiosCodeGen = AxiosCodeGen(isNodeJs: true);

    group('GET Request Integration Tests', () {
      testWidgets('GET 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com',
  method: 'get'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet1, "https"), expectedCode);
        });
      });

      testWidgets('GET 2 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/country/data',
  method: 'get',
  params: {
    "code": "US"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet2, "https"), expectedCode);
        });
      });

      testWidgets('GET 3 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/country/data',
  method: 'get',
  params: {
    "code": "IND"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet3, "https"), expectedCode);
        });
      });

      testWidgets('GET 4 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get',
  params: {
    "num": "8700000",
    "digits": "3",
    "system": "SS",
    "add_space": "true",
    "trailing_zeros": "true"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet4, "https"), expectedCode);
        });
      });

      testWidgets('GET 5 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.github.com/repos/foss42/apidash',
  method: 'get',
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet5, "https"), expectedCode);
        });
      });

      testWidgets('GET 6 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.github.com/repos/foss42/apidash',
  method: 'get',
  params: {
    "raw": "true"
  },
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet6, "https"), expectedCode);
        });
      });

      testWidgets('GET 7 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com',
  method: 'get'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet7, "https"), expectedCode);
        });
      });

      testWidgets('GET 8 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.github.com/repos/foss42/apidash',
  method: 'get',
  params: {
    "raw": "true"
  },
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet8, "https"), expectedCode);
        });
      });

      testWidgets('GET 9 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get',
  params: {
    "num": "8700000",
    "add_space": "true"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet9, "https"), expectedCode);
        });
      });

      testWidgets('GET 10 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get',
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet10, "https"), expectedCode);
        });
      });

      testWidgets('GET 11 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get',
  params: {
    "num": "8700000",
    "digits": "3"
  },
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet11, "https"), expectedCode);
        });
      });

      testWidgets('GET 12 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelGet12, "https"), expectedCode);
        });
      });
    });

    group('HEAD Request Integration Tests', () {
      testWidgets('HEAD 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'https://api.foss42.com',
  method: 'head'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelHead1, "https"), expectedCode);
        });
      });

      testWidgets('HEAD 2 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import axios from 'axios';

let config = {
  url: 'http://api.foss42.com',
  method: 'head'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelHead2, "http"), expectedCode);
        });
      });
    });

    group('POST Request Integration Tests', () {
      testWidgets('POST 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/case/lower',
  method: 'post',
  headers: {
    "Content-Type": "text/plain"
  },
  data: "{\n\"text\": \"I LOVE Flutter\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelPost1, "https"), expectedCode);
        });
      });

      testWidgets('POST 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/case/lower',
  method: 'post',
  headers: {
    "Content-Type": "application/json"
  },
  data: "{\n\"text\": \"I LOVE Flutter\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelPost2, "https"), expectedCode);
        });
      });

      testWidgets('POST 3', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import axios from 'axios';

let config = {
  url: 'https://api.foss42.com/case/lower',
  method: 'post',
  headers: {
    "Content-Type": "application/json",
    "User-Agent": "Test Agent"
  },
  data: "{\n\"text\": \"I LOVE Flutter\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelPost3, "https"), expectedCode);
        });
      });
    });

    group('PUT Request', () {
      testWidgets('PUT 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import axios from 'axios';

let config = {
  url: 'https://reqres.in/api/users/2',
  method: 'put',
  headers: {
    "Content-Type": "application/json"
  },
  data: "{\n\"name\": \"morpheus\",\n\"job\": \"zion resident\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelPut1, "https"), expectedCode);
        });
      });
    });

    group('PATCH', () {
      testWidgets('PATCH 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import axios from 'axios';

let config = {
  url: 'https://reqres.in/api/users/2',
  method: 'patch',
  headers: {
    "Content-Type": "application/json"
  },
  data: "{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelPatch1, "https"), expectedCode);
        });
      });
    });

    group('DELETE Request', () {
      testWidgets('DELETE 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import axios from 'axios';

let config = {
  url: 'https://reqres.in/api/users/2',
  method: 'delete'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelDelete1, "https"), expectedCode);
        });
      });

      testWidgets('DELETE 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import axios from 'axios';

let config = {
  url: 'https://reqres.in/api/users/2',
  method: 'delete',
  headers: {
    "Content-Type": "application/json"
  },
  data: "{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          expect(axiosCodeGen.getCode(requestModelDelete2, "https"), expectedCode);
        });
      });
    });
  });

  group('Kotlin OK_HTTP', () {
    final kotlinOkHttpCodeGen = KotlinOkHttpCodeGen();
    group('GET Request Integration Tests', () {
      testWidgets('GET 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import okhttp3.OkHttpClient
import okhttp3.Request

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com"

    val request = Request.Builder()
        .url(url)
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet1, "https"), expectedCode);
        });
      });

      testWidgets('GET 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.HttpUrl.Companion.toHttpUrl

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/country/data".toHttpUrl().newBuilder()
        .addQueryParameter("code", "US")
        .build()

    val request = Request.Builder()
        .url(url)
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet2, "https"), expectedCode);
        });
      });

      testWidgets('GET 3', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.HttpUrl.Companion.toHttpUrl

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/country/data".toHttpUrl().newBuilder()
        .addQueryParameter("code", "IND")
        .build()

    val request = Request.Builder()
        .url(url)
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet3, "https"), expectedCode);
        });
      });

      testWidgets('GET 4 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.HttpUrl.Companion.toHttpUrl

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/humanize/social".toHttpUrl().newBuilder()
        .addQueryParameter("num", "8700000")
        .addQueryParameter("digits", "3")
        .addQueryParameter("system", "SS")
        .addQueryParameter("add_space", "true")
        .addQueryParameter("trailing_zeros", "true")
        .build()

    val request = Request.Builder()
        .url(url)
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet4, "https"), expectedCode);
        });
      });

      testWidgets('GET 5 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request

fun main() {
    val client = OkHttpClient()

    val url = "https://api.github.com/repos/foss42/apidash"

    val request = Request.Builder()
        .url(url)
        .addHeader("User-Agent", "Test Agent")
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet5, "https"), expectedCode);
        });
      });

      testWidgets('GET 6 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.HttpUrl.Companion.toHttpUrl

fun main() {
    val client = OkHttpClient()

    val url = "https://api.github.com/repos/foss42/apidash".toHttpUrl().newBuilder()
        .addQueryParameter("raw", "true")
        .build()

    val request = Request.Builder()
        .url(url)
        .addHeader("User-Agent", "Test Agent")
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet6, "https"), expectedCode);
        });
      });

      testWidgets('GET 7 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com"

    val request = Request.Builder()
        .url(url)
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet7, "https"), expectedCode);
        });
      });

      testWidgets('GET 8 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.HttpUrl.Companion.toHttpUrl

fun main() {
    val client = OkHttpClient()

    val url = "https://api.github.com/repos/foss42/apidash".toHttpUrl().newBuilder()
        .addQueryParameter("raw", "true")
        .build()

    val request = Request.Builder()
        .url(url)
        .addHeader("User-Agent", "Test Agent")
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet8, "https"), expectedCode);
        });
      });

      testWidgets('GET 9 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.HttpUrl.Companion.toHttpUrl

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/humanize/social".toHttpUrl().newBuilder()
        .addQueryParameter("num", "8700000")
        .addQueryParameter("add_space", "true")
        .build()

    val request = Request.Builder()
        .url(url)
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet9, "https"), expectedCode);
        });
      });

      testWidgets('GET 10 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/humanize/social"

    val request = Request.Builder()
        .url(url)
        .addHeader("User-Agent", "Test Agent")
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet10, "https"), expectedCode);
        });
      });

      testWidgets('GET 11 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.HttpUrl.Companion.toHttpUrl

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/humanize/social".toHttpUrl().newBuilder()
        .addQueryParameter("num", "8700000")
        .addQueryParameter("digits", "3")
        .build()

    val request = Request.Builder()
        .url(url)
        .addHeader("User-Agent", "Test Agent")
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet11, "https"), expectedCode);
        });
      });

      testWidgets('GET 12 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/humanize/social"

    val request = Request.Builder()
        .url(url)
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelGet12, "https"), expectedCode);
        });
      });
    });

    group('HEAD Request', () {
      testWidgets('HEAD 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com"

    val request = Request.Builder()
        .url(url)
        .head()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelHead1, "https"), expectedCode);
        });
      });

      testWidgets('HEAD 2 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request

fun main() {
    val client = OkHttpClient()

    val url = "http://api.foss42.com"

    val request = Request.Builder()
        .url(url)
        .head()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelHead2, "http"), expectedCode);
        });
      });
    });

    group('POST Request Integration Tests', () {
      testWidgets('POST 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = '''import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.MediaType.Companion.toMediaType

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/case/lower"

    val mediaType = "text/plain".toMediaType()

    val body = """{
"text": "I LOVE Flutter"
}""".toRequestBody(mediaType)

    val request = Request.Builder()
        .url(url)
        .post(body)
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
''';
          expect(kotlinOkHttpCodeGen.getCode(requestModelPost1, "https"),
              expectedCode);
        });
      });

      testWidgets('POST 2 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = '''import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.MediaType.Companion.toMediaType

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/case/lower"

    val mediaType = "application/json".toMediaType()

    val body = """{
"text": "I LOVE Flutter"
}""".toRequestBody(mediaType)

    val request = Request.Builder()
        .url(url)
        .post(body)
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
''';
          expect(kotlinOkHttpCodeGen.getCode(requestModelPost2, "https"),
              expectedCode);
        });
      });

      testWidgets('POST 3 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = '''import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.MediaType.Companion.toMediaType

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com/case/lower"

    val mediaType = "application/json".toMediaType()

    val body = """{
"text": "I LOVE Flutter"
}""".toRequestBody(mediaType)

    val request = Request.Builder()
        .url(url)
        .addHeader("User-Agent", "Test Agent")
        .post(body)
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
''';
          expect(kotlinOkHttpCodeGen.getCode(requestModelPost3, "https"),
              expectedCode);
        });
      });
    });

    group('PUT Request Integration Tests', () {
      testWidgets('PUT 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = '''import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.MediaType.Companion.toMediaType

fun main() {
    val client = OkHttpClient()

    val url = "https://reqres.in/api/users/2"

    val mediaType = "application/json".toMediaType()

    val body = """{
"name": "morpheus",
"job": "zion resident"
}""".toRequestBody(mediaType)

    val request = Request.Builder()
        .url(url)
        .put(body)
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
''';
          expect(
              kotlinOkHttpCodeGen.getCode(requestModelPut1, "https"), expectedCode);
        });
      });
    });

    group('PATCH Request Integration Tests', () {
      testWidgets('PATCH 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = '''import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.MediaType.Companion.toMediaType

fun main() {
    val client = OkHttpClient()

    val url = "https://reqres.in/api/users/2"

    val mediaType = "application/json".toMediaType()

    val body = """{
"name": "marfeus",
"job": "accountant"
}""".toRequestBody(mediaType)

    val request = Request.Builder()
        .url(url)
        .patch(body)
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
''';
          expect(kotlinOkHttpCodeGen.getCode(requestModelPatch1, "https"),
              expectedCode);
        });
      });
    });
    group('DELETE Request Integration Tests', () {
      testWidgets('DELETE 1 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = """import okhttp3.OkHttpClient
import okhttp3.Request

fun main() {
    val client = OkHttpClient()

    val url = "https://reqres.in/api/users/2"

    val request = Request.Builder()
        .url(url)
        .delete()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
          expect(kotlinOkHttpCodeGen.getCode(requestModelDelete1, "https"),
              expectedCode);
        });
      });

      testWidgets('DELETE 2 Integration Test', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = '''import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.MediaType.Companion.toMediaType

fun main() {
    val client = OkHttpClient()

    val url = "https://reqres.in/api/users/2"

    val mediaType = "application/json".toMediaType()

    val body = """{
"name": "marfeus",
"job": "accountant"
}""".toRequestBody(mediaType)

    val request = Request.Builder()
        .url(url)
        .delete(body)
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
''';
          expect(kotlinOkHttpCodeGen.getCode(requestModelDelete2, "https"),
              expectedCode);
        });
      });
    });
    });

  group('JS Fetch', () {
    final fetchCodeGen = FetchCodeGen();

    group('GET Request', () {
      testWidgets('GET 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://api.foss42.com';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet1, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.foss42.com/country/data?code=US';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet2, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 3', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.foss42.com/country/data?code=IND';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet3, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 4', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.foss42.com/humanize/social?num=8700000&digits=3&system=SS&add_space=true&trailing_zeros=true';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet4, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 5', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.github.com/repos/foss42/apidash';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet5, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 6', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.github.com/repos/foss42/apidash?raw=true';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet6, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 7', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://api.foss42.com';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet7, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 8', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.github.com/repos/foss42/apidash?raw=true';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet8, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 9', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.foss42.com/humanize/social?num=8700000&add_space=true';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet9, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 10', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.foss42.com/humanize/social';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet10, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 11', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.foss42.com/humanize/social?num=8700000&digits=3';

let options = {
  method: 'GET',
  headers: {
    "User-Agent": "Test Agent"
  }
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet11, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 12', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode =
          r"""let url = 'https://api.foss42.com/humanize/social';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a GET request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelGet12, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });
    });

    group('HEAD Request', () {
      testWidgets('HEAD 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://api.foss42.com';

let options = {
  method: 'HEAD'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a HEAD request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelHead1, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('HEAD 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'http://api.foss42.com';

let options = {
  method: 'HEAD'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a HEAD request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelHead2, "http");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });
    });

    group('POST Request', () {
      testWidgets('POST 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://api.foss42.com/case/lower';

let options = {
  method: 'POST',
  headers: {
    "Content-Type": "text/plain"
  },
  body: 
"{\n\"text\": \"I LOVE Flutter\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a POST request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelPost1, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('POST 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://api.foss42.com/case/lower';

let options = {
  method: 'POST',
  headers: {
    "Content-Type": "application/json"
  },
  body: 
"{\n\"text\": \"I LOVE Flutter\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a POST request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelPost2, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('POST 3', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://api.foss42.com/case/lower';

let options = {
  method: 'POST',
  headers: {
    "Content-Type": "application/json",
    "User-Agent": "Test Agent"
  },
  body: 
"{\n\"text\": \"I LOVE Flutter\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a POST request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelPost3, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });
    });

    group('PUT Request', () {
      testWidgets('PUT 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://reqres.in/api/users/2';

let options = {
  method: 'PUT',
  headers: {
    "Content-Type": "application/json"
  },
  body: 
"{\n\"name\": \"morpheus\",\n\"job\": \"zion resident\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a PUT request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelPut1, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });
    });

    group('PATCH Request', () {
      testWidgets('PATCH 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://reqres.in/api/users/2';

let options = {
  method: 'PATCH',
  headers: {
    "Content-Type": "application/json"
  },
  body: 
"{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a PATCH request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelPatch1, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });
    });

    group('DELETE Request', () {
      testWidgets('DELETE 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://reqres.in/api/users/2';

let options = {
  method: 'DELETE'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a DELETE request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelDelete1, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('DELETE 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let url = 'https://reqres.in/api/users/2';

let options = {
  method: 'DELETE',
  headers: {
    "Content-Type": "application/json"
  },
  body: 
"{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
          // Simulate making a DELETE request using fetch
          final actualCode = await fetchCodeGen.getCode(requestModelDelete2, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });
    });
  });


  group('JS Axios', () {
    final axiosCodeGen = AxiosCodeGen();

    group('GET Request', () {
      testWidgets('GET 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let config = {
  url: 'https://api.foss42.com',
  method: 'get'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          // Simulate making a network request using axios
          final actualCode = await axiosCodeGen.getCode(requestModelGet1, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/country/data',
  method: 'get',
  params: {
    "code": "US"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          // Simulate making a network request using axios
          final actualCode = await axiosCodeGen.getCode(requestModelGet2, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 3', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/country/data',
  method: 'get',
  params: {
    "code": "IND"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          // Simulate making a network request using axios
          final actualCode = await axiosCodeGen.getCode(requestModelGet3, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 4', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get',
  params: {
    "num": "8700000",
    "digits": "3",
    "system": "SS",
    "add_space": "true",
    "trailing_zeros": "true"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          // Simulate making a network request using axios
          final actualCode = await axiosCodeGen.getCode(requestModelGet4, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 5', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let config = {
  url: 'https://api.github.com/repos/foss42/apidash',
  method: 'get',
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          // Simulate making a network request using axios
          final actualCode = await axiosCodeGen.getCode(requestModelGet5, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

      testWidgets('GET 6', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""let config = {
  url: 'https://api.github.com/repos/foss42/apidash',
  method: 'get',
  params: {
    "raw": "true"
  },
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
          // Simulate making a network request using axios
          final actualCode = await axiosCodeGen.getCode(requestModelGet6, "https");

          // Verify that the generated code matches the expected code
          expect(actualCode, expectedCode);
        });
      });

        testWidgets('GET 7', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.foss42.com',
  method: 'get'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a network request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelGet7, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });

        testWidgets('GET 8', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.github.com/repos/foss42/apidash',
  method: 'get',
  params: {
    "raw": "true"
  },
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a network request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelGet8, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });

        testWidgets('GET 9', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get',
  params: {
    "num": "8700000",
    "add_space": "true"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a network request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelGet9, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });

        testWidgets('GET 10', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get',
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a network request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelGet10, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });

        testWidgets('GET 11', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get',
  params: {
    "num": "8700000",
    "digits": "3"
  },
  headers: {
    "User-Agent": "Test Agent"
  }
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a network request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelGet11, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });

        testWidgets('GET 12', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/humanize/social',
  method: 'get'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a network request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelGet12, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });
      });

      group('HEAD Request', () {
        testWidgets('HEAD 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.foss42.com',
  method: 'head'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a HEAD request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelHead1, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });

        testWidgets('HEAD 2', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'http://api.foss42.com',
  method: 'head'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a HEAD request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelHead2, "http");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });
      });

      group('POST Request', () {
        testWidgets('POST 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/case/lower',
  method: 'post',
  headers: {
    "Content-Type": "text/plain"
  },
  data: "{\n\"text\": \"I LOVE Flutter\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a POST request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelPost1, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });

        testWidgets('POST 2', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/case/lower',
  method: 'post',
  headers: {
    "Content-Type": "application/json"
  },
  data: "{\n\"text\": \"I LOVE Flutter\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a POST request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelPost2, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });

        testWidgets('POST 3', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://api.foss42.com/case/lower',
  method: 'post',
  headers: {
    "Content-Type": "application/json",
    "User-Agent": "Test Agent"
  },
  data: "{\n\"text\": \"I LOVE Flutter\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a POST request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelPost3, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });
      });

      group('PUT Request', () {
        testWidgets('PUT 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://reqres.in/api/users/2',
  method: 'put',
  headers: {
    "Content-Type": "application/json"
  },
  data: "{\n\"name\": \"morpheus\",\n\"job\": \"zion resident\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a PUT request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelPut1, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });
      });

      group('PATCH Request', () {
        testWidgets('PATCH 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://reqres.in/api/users/2',
  method: 'patch',
  headers: {
    "Content-Type": "application/json"
  },
  data: "{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a PATCH request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelPatch1, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });
      });

      group('DELETE Request', () {
        testWidgets('DELETE 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://reqres.in/api/users/2',
  method: 'delete'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a DELETE request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelDelete1, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });

        testWidgets('DELETE 2', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""let config = {
  url: 'https://reqres.in/api/users/2',
  method: 'delete',
  headers: {
    "Content-Type": "application/json"
  },
  data: "{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
            // Simulate making a DELETE request using axios
            final actualCode = await axiosCodeGen.getCode(requestModelDelete2, "https");

            // Verify that the generated code matches the expected code
            expect(actualCode, expectedCode);
          });
        });
      });
    });


  group('HAR CodeGen', () {
    final harCodeGen = HARCodeGen();

    group('GET Request', () {
      testWidgets('GET 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelGet1, "https"), expectedCode);
        });
      });

      testWidgets('GET 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com/country/data?code=US",
  "httpVersion": "HTTP/1.1",
  "queryString": [
    {
      "name": "code",
      "value": "US"
    }
  ],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelGet2, "https"), expectedCode);
        });
      });

      testWidgets('GET 3', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com/country/data?code=IND",
  "httpVersion": "HTTP/1.1",
  "queryString": [
    {
      "name": "code",
      "value": "IND"
    }
  ],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelGet3, "https"), expectedCode);
        });
      });

      testWidgets('GET 4', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com/humanize/social?num=8700000&digits=3&system=SS&add_space=true&trailing_zeros=true",
  "httpVersion": "HTTP/1.1",
  "queryString": [
    {
      "name": "num",
      "value": "8700000"
    },
    {
      "name": "digits",
      "value": "3"
    },
    {
      "name": "system",
      "value": "SS"
    },
    {
      "name": "add_space",
      "value": "true"
    },
    {
      "name": "trailing_zeros",
      "value": "true"
    }
  ],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelGet4, "https"), expectedCode);
        });
      });

      testWidgets('GET 5', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.github.com/repos/foss42/apidash",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": [
    {
      "name": "User-Agent",
      "value": "Test Agent"
    }
  ]
}""";
          expect(harCodeGen.getCode(requestModelGet5, "https"), expectedCode);
        });
      });

      testWidgets('GET 6', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.github.com/repos/foss42/apidash?raw=true",
  "httpVersion": "HTTP/1.1",
  "queryString": [
    {
      "name": "raw",
      "value": "true"
    }
  ],
  "headers": [
    {
      "name": "User-Agent",
      "value": "Test Agent"
    }
  ]
}""";
          expect(harCodeGen.getCode(requestModelGet6, "https"), expectedCode);
        });
      });

      testWidgets('GET 7', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelGet7, "https"), expectedCode);
        });
      });

      testWidgets('GET 8', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.github.com/repos/foss42/apidash?raw=true",
  "httpVersion": "HTTP/1.1",
  "queryString": [
    {
      "name": "raw",
      "value": "true"
    }
  ],
  "headers": [
    {
      "name": "User-Agent",
      "value": "Test Agent"
    }
  ]
}""";
          expect(harCodeGen.getCode(requestModelGet8, "https"), expectedCode);
        });
      });

      testWidgets('GET 9', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com/humanize/social?num=8700000&add_space=true",
  "httpVersion": "HTTP/1.1",
  "queryString": [
    {
      "name": "num",
      "value": "8700000"
    },
    {
      "name": "add_space",
      "value": "true"
    }
  ],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelGet9, "https"), expectedCode);
        });
      });

      testWidgets('GET 10', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com/humanize/social",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": [
    {
      "name": "User-Agent",
      "value": "Test Agent"
    }
  ]
}""";
          expect(
              harCodeGen.getCode(
                requestModelGet10,
                "https",
              ),
              expectedCode);
        });
      });

      testWidgets('GET 11', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com/humanize/social?num=8700000&digits=3",
  "httpVersion": "HTTP/1.1",
  "queryString": [
    {
      "name": "num",
      "value": "8700000"
    },
    {
      "name": "digits",
      "value": "3"
    }
  ],
  "headers": [
    {
      "name": "User-Agent",
      "value": "Test Agent"
    }
  ]
}""";
          expect(harCodeGen.getCode(requestModelGet11, "https"), expectedCode);
        });
      });

      testWidgets('GET 12', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com/humanize/social",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelGet12, "https"), expectedCode);
        });
      });
    });

    group('HEAD Request', () {
      testWidgets('HEAD 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "HEAD",
  "url": "https://api.foss42.com",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelHead1, "https"), expectedCode);
        });
      });

      testWidgets('HEAD 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "HEAD",
  "url": "http://api.foss42.com",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelHead2, "http"), expectedCode);
        });
      });
    });

    group('POST Request', () {
      testWidgets('POST 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "POST",
  "url": "https://api.foss42.com/case/lower",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": [
    {
      "name": "Content-Type",
      "value": "text/plain"
    }
  ],
  "postData": {
    "mimeType": "text/plain",
    "text": "{\n\"text\": \"I LOVE Flutter\"\n}"
  }
}""";
          expect(harCodeGen.getCode(requestModelPost1, "https"), expectedCode);
        });
      });

      testWidgets('POST 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "POST",
  "url": "https://api.foss42.com/case/lower",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": [
    {
      "name": "Content-Type",
      "value": "application/json"
    }
  ],
  "postData": {
    "mimeType": "application/json",
    "text": "{\n\"text\": \"I LOVE Flutter\"\n}"
  }
}""";
          expect(harCodeGen.getCode(requestModelPost2, "https"), expectedCode);
        });
      });

      testWidgets('POST 3', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "POST",
  "url": "https://api.foss42.com/case/lower",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": [
    {
      "name": "Content-Type",
      "value": "application/json"
    },
    {
      "name": "User-Agent",
      "value": "Test Agent"
    }
  ],
  "postData": {
    "mimeType": "application/json",
    "text": "{\n\"text\": \"I LOVE Flutter\"\n}"
  }
}""";
          expect(harCodeGen.getCode(requestModelPost3, "https"), expectedCode);
        });
      });
    });

    group('PUT Request', () {
      testWidgets('PUT 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "PUT",
  "url": "https://reqres.in/api/users/2",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": [
    {
      "name": "Content-Type",
      "value": "application/json"
    }
  ],
  "postData": {
    "mimeType": "application/json",
    "text": "{\n\"name\": \"morpheus\",\n\"job\": \"zion resident\"\n}"
  }
}""";
          expect(harCodeGen.getCode(requestModelPut1, "https"), expectedCode);
        });
      });
    });

    group('PATCH Request', () {
      testWidgets('PATCH 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "PATCH",
  "url": "https://reqres.in/api/users/2",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": [
    {
      "name": "Content-Type",
      "value": "application/json"
    }
  ],
  "postData": {
    "mimeType": "application/json",
    "text": "{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
  }
}""";
          expect(harCodeGen.getCode(requestModelPatch1, "https"), expectedCode);
        });
      });
    });

    group('DELETE Request', () {
      testWidgets('DELETE 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "DELETE",
  "url": "https://reqres.in/api/users/2",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": []
}""";
          expect(harCodeGen.getCode(requestModelDelete1, "https"), expectedCode);
        });
      });

      testWidgets('DELETE 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""{
  "method": "DELETE",
  "url": "https://reqres.in/api/users/2",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": [
    {
      "name": "Content-Type",
      "value": "application/json"
    }
  ],
  "postData": {
    "mimeType": "application/json",
    "text": "{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}"
  }
}""";
          expect(harCodeGen.getCode(requestModelDelete2, "https"), expectedCode);
        });
      });
    });
  });



  group('DartHttp CodeGen', () {
    final dartHttpCodeGen = DartHttpCodeGen();

    group('GET Request', () {
      testWidgets('GET 1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com');

  final response = await http.get(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet1, "https"), expectedCode);
        });
      });

      testWidgets('GET 2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/country/data');

  var queryParams = {'code': 'US'};
  uri = uri.replace(queryParameters: queryParams);

  final response = await http.get(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";

          expect(dartHttpCodeGen.getCode(requestModelGet2, "https"), expectedCode);
        });
      });

      testWidgets('GET 3', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/country/data?code=US');

  var queryParams = {'code': 'IND'};
  var urlQueryParams = Map<String, String>.from(uri.queryParameters);
  urlQueryParams.addAll(queryParams);
  uri = uri.replace(queryParameters: urlQueryParams);

  final response = await http.get(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet3, "https"), expectedCode);
        });
      });

      testWidgets('GET 4', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/humanize/social');

  var queryParams = {
    'num': '8700000',
    'digits': '3',
    'system': 'SS',
    'add_space': 'true',
    'trailing_zeros': 'true',
  };
  uri = uri.replace(queryParameters: queryParams);

  final response = await http.get(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet4, "https"), expectedCode);
        });
      });

      testWidgets('GET 5', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.github.com/repos/foss42/apidash');

  var headers = {'User-Agent': 'Test Agent'};

  final response = await http.get(
    uri,
    headers: headers,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet5, "https"), expectedCode);
        });
      });

      testWidgets('GET 6', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.github.com/repos/foss42/apidash');

  var queryParams = {'raw': 'true'};
  uri = uri.replace(queryParameters: queryParams);

  var headers = {'User-Agent': 'Test Agent'};

  final response = await http.get(
    uri,
    headers: headers,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet6, "https"), expectedCode);
        });
      });

      testWidgets('GET 7', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com');

  final response = await http.get(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet7, "https"), expectedCode);
        });
      });

      testWidgets('GET 8', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.github.com/repos/foss42/apidash');

  var queryParams = {'raw': 'true'};
  uri = uri.replace(queryParameters: queryParams);

  var headers = {'User-Agent': 'Test Agent'};

  final response = await http.get(
    uri,
    headers: headers,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet8, "https"), expectedCode);
        });
      });

      testWidgets('GET 9', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/humanize/social');

  var queryParams = {
    'num': '8700000',
    'add_space': 'true',
  };
  uri = uri.replace(queryParameters: queryParams);

  final response = await http.get(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet9, "https"), expectedCode);
        });
      });

      testWidgets('GET 10', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/humanize/social');

  var headers = {'User-Agent': 'Test Agent'};

  final response = await http.get(
    uri,
    headers: headers,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(
              dartHttpCodeGen.getCode(
                requestModelGet10,
                "https",
              ),
              expectedCode);
        });
      });

      testWidgets('GET 11', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/humanize/social');

  var queryParams = {
    'num': '8700000',
    'digits': '3',
  };
  uri = uri.replace(queryParameters: queryParams);

  var headers = {'User-Agent': 'Test Agent'};

  final response = await http.get(
    uri,
    headers: headers,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet11, "https"), expectedCode);
        });
      });

      testWidgets('GET 12', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/humanize/social');

  final response = await http.get(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
          expect(dartHttpCodeGen.getCode(requestModelGet12, "https"), expectedCode);
        });
      });
    });

      group('HEAD Request', () {
        testWidgets('HEAD 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com');

  final response = await http.head(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
            expect(dartHttpCodeGen.getCode(requestModelHead1, "https"), expectedCode);
          });
        });

        testWidgets('HEAD 2', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('http://api.foss42.com');

  final response = await http.head(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
            expect(dartHttpCodeGen.getCode(requestModelHead2, "http"), expectedCode);
          });
        });
      });

      group('POST Request', () {
        testWidgets('POST 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/case/lower');

  String body = r'''{
"text": "I LOVE Flutter"
}''';

  var headers = {'content-type': 'text/plain'};

  final response = await http.post(
    uri,
    headers: headers,
    body: body,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
            expect(dartHttpCodeGen.getCode(requestModelPost1, "https"), expectedCode);
          });
        });

        testWidgets('POST 2', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/case/lower');

  String body = r'''{
"text": "I LOVE Flutter"
}''';

  var headers = {'content-type': 'application/json'};

  final response = await http.post(
    uri,
    headers: headers,
    body: body,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
            expect(dartHttpCodeGen.getCode(requestModelPost2, "https"), expectedCode);
          });
        });

        testWidgets('POST 3', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/case/lower');

  String body = r'''{
"text": "I LOVE Flutter"
}''';

  var headers = {
    'User-Agent': 'Test Agent',
    'content-type': 'application/json',
  };

  final response = await http.post(
    uri,
    headers: headers,
    body: body,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
            expect(dartHttpCodeGen.getCode(requestModelPost3, "https"), expectedCode);
          });
        });
      });

      group('PUT Request', () {
        testWidgets('PUT 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://reqres.in/api/users/2');

  String body = r'''{
"name": "morpheus",
"job": "zion resident"
}''';

  var headers = {'content-type': 'application/json'};

  final response = await http.put(
    uri,
    headers: headers,
    body: body,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
            expect(dartHttpCodeGen.getCode(requestModelPut1, "https"), expectedCode);
          });
        });
      });

      group('PATCH Request', () {
        testWidgets('PATCH 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://reqres.in/api/users/2');

  String body = r'''{
"name": "marfeus",
"job": "accountant"
}''';

  var headers = {'content-type': 'application/json'};

  final response = await http.patch(
    uri,
    headers: headers,
    body: body,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
            expect(dartHttpCodeGen.getCode(requestModelPatch1, "https"), expectedCode);
          });
        });
      });

      group('DELETE Request', () {
        testWidgets('DELETE 1', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://reqres.in/api/users/2');

  final response = await http.delete(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
            expect(dartHttpCodeGen.getCode(requestModelDelete1, "https"), expectedCode);
          });
        });

        testWidgets('DELETE 2', (WidgetTester tester) async {
          await tester.runAsync(() async {
            const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://reqres.in/api/users/2');

  String body = r'''{
"name": "marfeus",
"job": "accountant"
}''';

  var headers = {'content-type': 'application/json'};

  final response = await http.delete(
    uri,
    headers: headers,
    body: body,
  );

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
            expect(dartHttpCodeGen.getCode(requestModelDelete2, "https"), expectedCode);
          });
        });
    });
  });

  group('Test various Code generators', () {
    final codeGen = Codegen();
    testWidgets('cURL', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""curl --url 'https://api.foss42.com'""";
        expect(
          codeGen.getCode(CodegenLanguage.curl, requestModelGet1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('Dart Dio', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import 'package:dio/dio.dart' as dio;

void main() async {
  try {
    final response = await dio.Dio.get('https://api.foss42.com');
    print(response.statusCode);
    print(response.data);
  } on DioException catch (e, s) {
    print(e.response?.statusCode);
    print(e.response?.data);
    print(s);
  } catch (e, s) {
    print(e);
    print(s);
  }
}
""";
        expect(
          codeGen.getCode(CodegenLanguage.dartDio, requestModelGet1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('Dart HTTP', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com');

  final response = await http.get(uri);

  int statusCode = response.statusCode;
  if (statusCode >= 200 && statusCode < 300) {
    print('Status Code: $statusCode');
    print('Response Body: ${response.body}');
  } else {
    print('Error Status Code: $statusCode');
    print('Error Response Body: ${response.body}');
  }
}
""";
        expect(
          codeGen.getCode(CodegenLanguage.dartHttp, requestModelGet1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('HAR', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""{
  "method": "GET",
  "url": "https://api.foss42.com",
  "httpVersion": "HTTP/1.1",
  "queryString": [],
  "headers": []
}""";
        expect(
          codeGen.getCode(CodegenLanguage.har, requestModelGet1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('JS Axios', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""let config = {
  url: 'https://api.foss42.com',
  method: 'get'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
        expect(
          codeGen.getCode(CodegenLanguage.jsAxios, requestModelGet1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('JS Fetch', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""let url = 'https://api.foss42.com';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
        expect(
          codeGen.getCode(CodegenLanguage.jsFetch, requestModelGet1, "https"),
          expectedCode,
        );
      });
    });

    testWidgets('Kotlin OkHttp', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import okhttp3.OkHttpClient
import okhttp3.Request

fun main() {
    val client = OkHttpClient()

    val url = "https://api.foss42.com"

    val request = Request.Builder()
        .url(url)
        .get()
        .build()

    val response = client.newCall(request).execute()

    println(response.code)
    println(response.body?.string())
}
""";
        expect(
          codeGen.getCode(
            CodegenLanguage.kotlinOkHttp,
            requestModelGet1,
            "https",
          ),
          expectedCode,
        );
      });
    });

    testWidgets('NodeJs Axios', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import axios from 'axios';

let config = {
  url: 'https://api.foss42.com',
  method: 'get'
};

axios(config)
    .then(function (response) {
        // handle success
        console.log(response.status);
        console.log(response.data);
    })
    .catch(function (error) {
        // handle error
        console.log(error.response.status);
        console.log(error);
    });
""";
        expect(
          codeGen.getCode(
            CodegenLanguage.nodejsAxios,
            requestModelGet1,
            "https",
          ),
          expectedCode,
        );
      });
    });

    testWidgets('Nodejs Fetch', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import fetch from 'node-fetch';

let url = 'https://api.foss42.com';

let options = {
  method: 'GET'
};

let status;
fetch(url, options)
    .then(res => {
        status = res.status;
        return res.json()
    })
    .then(body => {
        console.log(status);
        console.log(body);
    })
    .catch(err => {
        console.log(status);
        console.error('error:' + err);
    });
""";
        expect(
          codeGen.getCode(
            CodegenLanguage.nodejsFetch,
            requestModelGet1,
            "https",
          ),
          expectedCode,
        );
      });
    });

    testWidgets('Python http.client', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import http.client

conn = http.client.HTTPSConnection("api.foss42.com")
conn.request("GET", "")

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
""";
        expect(
          codeGen.getCode(
            CodegenLanguage.pythonHttpClient,
            requestModelGet1,
            "https",
          ),
          expectedCode,
        );
      });
    });

    testWidgets('Python requests', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedCode = r"""import requests

url = 'https://api.foss42.com'

response = requests.get(url)

print('Status Code:', response.status_code)
print('Response Body:', response.text)
""";
        expect(
          codeGen.getCode(
            CodegenLanguage.pythonRequests,
            requestModelGet1,
            "https",
          ),
          expectedCode,
        );
      });
    });
  });

  group('SettingsModel Tests', (){
    const sm = SettingsModel(
      isDark: false,
      alwaysShowCollectionPaneScrollbar: true,
      size: Size(300, 200),
      offset: Offset(100, 150),
      defaultUriScheme: "http",
      defaultCodeGenLang: CodegenLanguage.curl,
      saveResponses: true,
      promptBeforeClosing: true,
    );

    testWidgets('Testing toJson()', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedResult = {
          "isDark": false,
          "alwaysShowCollectionPaneScrollbar": true,
          "width": 300.0,
          "height": 200.0,
          "dx": 100.0,
          "dy": 150.0,
          "defaultUriScheme": "http",
          "defaultCodeGenLang": "curl",
          "saveResponses": true,
          "promptBeforeClosing": true
        };
        expect(sm.toJson(), expectedResult);
      });
    });

    testWidgets('Testing fromJson()', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const input = {
          "isDark": false,
          "alwaysShowCollectionPaneScrollbar": true,
          "width": 300.0,
          "height": 200.0,
          "dx": 100.0,
          "dy": 150.0,
          "defaultUriScheme": "http",
          "defaultCodeGenLang": "curl",
          "saveResponses": true,
          "promptBeforeClosing": true
        };
        expect(SettingsModel.fromJson(input), sm);
      });
    });

    testWidgets('Testing copyWith()', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedResult = SettingsModel(
          isDark: true,
          alwaysShowCollectionPaneScrollbar: true,
          size: Size(300, 200),
          offset: Offset(100, 150),
          defaultUriScheme: "http",
          defaultCodeGenLang: CodegenLanguage.curl,
          saveResponses: false,
          promptBeforeClosing: true,
        );
        expect(
          sm.copyWith(
            isDark: true,
            saveResponses: false,
          ),
          expectedResult,
        );
      });
    });

    testWidgets('Testing toString()', (WidgetTester tester) async {
      await tester.runAsync(() async {
        const expectedResult =
            "{isDark: false, alwaysShowCollectionPaneScrollbar: true, width: 300.0, height: 200.0, dx: 100.0, dy: 150.0, defaultUriScheme: http, defaultCodeGenLang: curl, saveResponses: true, promptBeforeClosing: true}";
        expect(sm.toString(), expectedResult);
      });
    });

    testWidgets('Testing hashcode', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(sm.hashCode, greaterThan(0));
      });
    });
  });

  group('ResponseModel Tests', (){
    int statusCode = 200;
    Map<String, String> headers = {
      "content-length": "16",
      "x-cloud-trace-context": "dad62aaf7f640300bbf629f4ae2f2f63",
      "content-type": "application/json",
      "date": "Sun, 23 Apr 2023 23:46:31 GMT",
      "server": "Google Frontend"
    };
    Map<String, String> requestHeaders = {
      "content-length": "18",
      "content-type": "application/json; charset=utf-8"
    };
    String body = '{"data":"world"}';
    Uint8List bodyBytes = Uint8List.fromList([
      123,
      34,
      100,
      97,
      116,
      97,
      34,
      58,
      34,
      119,
      111,
      114,
      108,
      100,
      34,
      125
    ]);
    String formattedBody = '''{
  "data": "world"
}''';
    Duration time = const Duration(milliseconds: 516);

    ResponseModel responseModel = ResponseModel(
        statusCode: statusCode,
        headers: headers,
        requestHeaders: requestHeaders,
        body: body,
        formattedBody: formattedBody,
        bodyBytes: bodyBytes,
        time: time);

    Map<String, dynamic> responseModelJson = {
      "statusCode": statusCode,
      "headers": headers,
      "requestHeaders": requestHeaders,
      "body": body,
      "bodyBytes": bodyBytes,
      "time": 516000,
    };

    String responseModelStringExpected = [
      "Response Status: 200",
      "Response Time: 0:00:00.516000",
      "Response Headers: {content-length: 16, x-cloud-trace-context: dad62aaf7f640300bbf629f4ae2f2f63, content-type: application/json, date: Sun, 23 Apr 2023 23:46:31 GMT, server: Google Frontend}",
      "Response Request Headers: {content-length: 18, content-type: application/json; charset=utf-8}",
      'Response Body: {"data":"world"}',
    ].join("\n");

    testWidgets('Testing toJSON', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(responseModel.toJson(), responseModelJson);
      });
    });

    testWidgets('Testing toString', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(responseModel.toString(), responseModelStringExpected);
      });
    });

    testWidgets('Testing fromJson', (WidgetTester tester) async {
      await tester.runAsync(() async {
        final responseModelData = ResponseModel.fromJson(responseModelJson);
        expect(responseModelData, responseModel);
      });
    });

    testWidgets('Testing fromResponse', (WidgetTester tester) async {
      await tester.runAsync(() async {
        final response = await http.get(
          Uri.parse('https://api.foss42.com/'),
        );
        final responseData = responseModel.fromResponse(response: response);
        expect(responseData.statusCode, 200);
        expect(responseData.body,
            '{"message":"Check out https://foss42.com for API docs to get started."}');
        expect(
            responseData.formattedBody,
            '''{
  "message": "Check out https://foss42.com for API docs to get started."
}''');
      });
    });

    testWidgets('Testing fromResponse for contentType not Json',
            (WidgetTester tester) async {
          await tester.runAsync(() async {
            final response = await http.get(
              Uri.parse('https://foss42.com/'),
            );
            final responseData = responseModel.fromResponse(response: response);
            expect(responseData.statusCode, 200);
            expect(responseData.body!.length, greaterThan(1000));
            expect(responseData.contentType, 'text/html; charset=utf-8');
            expect(responseData.mediaType!.mimeType, 'text/html');
          });
        });

    testWidgets('Testing hashcode', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(responseModel.hashCode, greaterThan(0));
      });
    });
  });


  group('RequestModel Tests', () {
    int statusCode = 200;
    Map<String, String> headers = {
      "content-length": "16",
      "x-cloud-trace-context": "dad62aaf7f640300bbf629f4ae2f2f63",
      "content-type": "application/json",
      "date": "Sun, 23 Apr 2023 23:46:31 GMT",
      "server": "Google Frontend"
    };
    Map<String, String> requestHeaders = {
      "content-length": "18",
      "content-type": "application/json; charset=utf-8"
    };
    String body = '{"data":"world"}';
    Uint8List bodyBytes = Uint8List.fromList([
      123,
      34,
      100,
      97,
      116,
      97,
      34,
      58,
      34,
      119,
      111,
      114,
      108,
      100,
      34,
      125
    ]);
    String formattedBody = '''{
    "data": "world"
    }''';
    Duration time = const Duration(milliseconds: 516);

    ResponseModel responseModel = ResponseModel(
        statusCode: statusCode,
        headers: headers,
        requestHeaders: requestHeaders,
        body: body,
        formattedBody: formattedBody,
        bodyBytes: bodyBytes,
        time: time);

    RequestModel requestModel = RequestModel(
        id: '1',
        method: HTTPVerb.post,
        url: 'api.foss42.com/case/lower',
        name: 'foss42 api',
        requestHeaders: const [
          NameValueModel(name: 'content-length', value: '18'),
          NameValueModel(
              name: 'content-type', value: 'application/json; charset=utf-8')
        ],
        requestBodyContentType: ContentType.json,
        requestBody: '''{
    "text":"WORLD"
    }''',
        responseStatus: 200,
        responseModel: responseModel);

    RequestModel requestModelDup = const RequestModel(
        id: '1',
        method: HTTPVerb.post,
        url: 'api.foss42.com/case/lower',
        name: 'foss42 api',
        requestHeaders: [
          NameValueModel(name: 'content-length', value: '18'),
          NameValueModel(
              name: 'content-type', value: 'application/json; charset=utf-8')
        ],
        requestBodyContentType: ContentType.json,
        requestBody: '''{
"text":"WORLD"
}''');

    Map<String, dynamic> requestModelAsJson = {
      "id": '1',
      "method": 'post',
      "url": 'api.foss42.com/case/lower',
      "name": 'foss42 api',
      'description': '',
      "requestHeaders": {
        'content-length': '18',
        'content-type': 'application/json; charset=utf-8'
      },
      'isHeaderEnabledList': null,
      'requestParams': null,
      'isParamEnabledList': null,
      "requestBodyContentType": 'json',
      "requestBody": '''{
"text":"WORLD"
}''',
      'requestFormDataList': null,
      'responseStatus': null,
      'message': null,
      'responseModel': null
    };

    testWidgets('Testing copyWith', (WidgetTester tester) async {
      await tester.runAsync(() async {
        final requestModelCopyWith =
        requestModel.copyWith(name: 'API foss42');
        expect(requestModelCopyWith.name, 'API foss42');
      });
    });

    testWidgets('Testing toJson', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(requestModelDup.toJson(), requestModelAsJson);
      });
    });

    testWidgets('Testing fromJson', (WidgetTester tester) async {
      await tester.runAsync(() async {
        final modelFromJson = RequestModel.fromJson(requestModelAsJson);
        expect(modelFromJson, requestModelDup);
      });
    });

    final requestModeDupString = [
      "Request Id: 1",
      "Request Method: post",
      "Request URL: api.foss42.com/case/lower",
      "Request Name: foss42 api",
      "Request Description: ",
      "Request Tab Index: 0",
      "Request Headers: [NameValueModel(name: content-length, value: 18), NameValueModel(name: content-type, value: application/json; charset=utf-8)]",
      "Enabled Headers: null",
      "Request Params: null",
      "Enabled Params: null",
      "Request Body Content Type: ContentType.json",
      'Request Body: {\n"text":"WORLD"\n}',
      'Request FormData: null',
      "Response Status: null",
      "Response Message: null",
      "Response: null"
    ].join("\n");

    testWidgets('Testing toString', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(requestModelDup.toString(), requestModeDupString);
      });
    });

    testWidgets('Testing getters', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(requestModel.enabledRequestHeaders, const [
          NameValueModel(name: 'content-length', value: '18'),
          NameValueModel(
              name: 'content-type', value: 'application/json; charset=utf-8')
        ]);
        expect(requestModel.enabledRequestParams, null);
        expect(requestModel.enabledHeadersMap, {
          'content-length': '18',
          'content-type': 'application/json; charset=utf-8'
        });
        expect(requestModel.enabledParamsMap, {});
        expect(requestModel.headersMap, {
          'content-length': '18',
          'content-type': 'application/json; charset=utf-8'
        });
        expect(requestModel.paramsMap, {});
        expect(requestModel.formDataMapList, []);
        expect(requestModel.isFormDataRequest, false);
        expect(requestModel.hasContentTypeHeader, true);
      });
    });

    testWidgets('Testing hashcode', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(requestModel.hashCode, greaterThan(0));
      });
    });
  });

  testWidgets('Testing toString()', (WidgetTester tester) async {
    const nmRow1 = NameValueModel(name: "harry", value: 23);

    await tester.runAsync(() async {
      final resultToString = nmRow1.toString();
      expect(resultToString, 'NameValueModel(name: harry, value: 23)');
    });
  });

  testWidgets('Testing toJson()', (WidgetTester tester) async {
    const nmRow1 = NameValueModel(name: "harry", value: 23);

    await tester.runAsync(() async {
      final resultToJson = nmRow1.toJson();
      expect(resultToJson, {"name": "harry", "value": 23});
    });
  });

  testWidgets('Testing fromJson()', (WidgetTester tester) async {
    const nmRow1 = NameValueModel(name: "harry", value: 23);

    await tester.runAsync(() async {
      final resultFromJson = NameValueModel.fromJson({"name": "harry", "value": 23});
      expect(resultFromJson, nmRow1);
    });
  });

  testWidgets('Testing copyWith()', (WidgetTester tester) async {
    const nmRow1 = NameValueModel(name: "harry", value: 23);

    await tester.runAsync(() async {
      final resultCopyWith = nmRow1.copyWith(name: "winter", value: "26");
      expect(resultCopyWith, const NameValueModel(name: "winter", value: "26"));
    });
  });

  testWidgets('Testing hashCode', (WidgetTester tester) async {
    const nmRow1 = NameValueModel(name: "harry", value: 23);

    await tester.runAsync(() async {
      final hashCode = nmRow1.hashCode;
      expect(hashCode, greaterThan(0));
    });
  });

  const FormDataModel fdmRow1 = FormDataModel(
    name: "harry",
    value: "23",
    type: FormDataType.text,
  );

  testWidgets('Testing toString()', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(fdmRow1.toString(), 'FormDataModel(name: harry, value: 23, type: FormDataType.text)');
    });
  });

  testWidgets('Testing toJson()', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(fdmRow1.toJson(), {"name": "harry", "value": "23", "type": "text"});
    });
  });

  testWidgets('Testing fromJson()', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(
        FormDataModel.fromJson({"name": "harry", "value": "23", "type": "text"}),
        fdmRow1,
      );
    });
  });

  testWidgets('Testing copyWith()', (WidgetTester tester) async {
    await tester.runAsync(() async {
      const resultExpected = FormDataModel(
        name: "winter",
        value: "26",
        type: FormDataType.file,
      );
      expect(
        fdmRow1.copyWith(name: "winter", value: "26", type: FormDataType.file),
        resultExpected,
      );
    });
  });

  testWidgets('Testing hashCode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(fdmRow1.hashCode, greaterThan(0));
    });
  });


  int statusCode1 = 200;
  testWidgets('Testing getResponseStatusCodeColor for statusCode 200', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode1), kColorStatusCode200);
    });
  });

  Color colStatusCode1DarkModeExpected = getDarkModeColor(kColorStatusCode200);
  testWidgets('Testing getResponseStatusCodeColor for statusCode 200 dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode1, brightness: Brightness.dark), colStatusCode1DarkModeExpected);
    });
  });

  int statusCode2 = 300;
  testWidgets('Testing getResponseStatusCodeColor for statusCode 300', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode2), kColorStatusCode300);
    });
  });

  Color colStatusCode2DarkModeExpected = getDarkModeColor(kColorStatusCode300);
  testWidgets('Testing getResponseStatusCodeColor for statusCode 300 dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode2, brightness: Brightness.dark), colStatusCode2DarkModeExpected);
    });
  });

  int statusCode3 = 404;
  testWidgets('Testing getResponseStatusCodeColor for statusCode 404', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode3), kColorStatusCode400);
    });
  });

  Color colStatusCode3DarkModeExpected = getDarkModeColor(kColorStatusCode400);
  testWidgets('Testing getResponseStatusCodeColor for statusCode 404 dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode3, brightness: Brightness.dark), colStatusCode3DarkModeExpected);
    });
  });

  getDarkModeColor(kColorStatusCode400);
  testWidgets('Testing getResponseStatusCodeColor for statusCode 404 dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode3, brightness: Brightness.dark), colStatusCode3DarkModeExpected);
    });
  });

  int statusCode4 = 503;
  testWidgets('Testing getResponseStatusCodeColor for statusCode 503', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode4), kColorStatusCode500);
    });
  });

  Color colStatusCode4DarkModeExpected = getDarkModeColor(kColorStatusCode500);
  testWidgets('Testing getResponseStatusCodeColor for statusCode 503 dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode4, brightness: Brightness.dark), colStatusCode4DarkModeExpected);
    });
  });

  int statusCode5 = 101;
  testWidgets('Testing getResponseStatusCodeColor for statusCode 101', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode5), kColorStatusCodeDefault);
    });
  });

  Color colStatusCode5DarkModeExpected = getDarkModeColor(kColorStatusCodeDefault);
  testWidgets('Testing getResponseStatusCodeColor for statusCode 101 dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getResponseStatusCodeColor(statusCode5, brightness: Brightness.dark), colStatusCode5DarkModeExpected);
    });
  });

  HTTPVerb methodGet = HTTPVerb.get;
  testWidgets('Test getHTTPMethodColor for GET method', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodGet), kColorHttpMethodGet);
    });
  });

  Color colMethodGetDarkModeExpected = getDarkModeColor(kColorHttpMethodGet);
  testWidgets('Test getHTTPMethodColor for GET method dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodGet, brightness: Brightness.dark), colMethodGetDarkModeExpected);
    });
  });

  HTTPVerb methodHead = HTTPVerb.head;
  testWidgets('Test getHTTPMethodColor for HEAD Method', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodHead), kColorHttpMethodHead);
    });
  });

  Color colMethodHeadDarkModeExpected = getDarkModeColor(kColorHttpMethodHead);
  testWidgets('Test getHTTPMethodColor for HEAD Method dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodHead, brightness: Brightness.dark), colMethodHeadDarkModeExpected);
    });
  });

  HTTPVerb methodPatch = HTTPVerb.patch;
  testWidgets('Test getHTTPMethodColor for PATCH Method', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodPatch), kColorHttpMethodPatch);
    });
  });

  Color colMethodPatchDarkModeExpected = getDarkModeColor(kColorHttpMethodPatch);
  testWidgets('Test getHTTPMethodColor for PATCH Method dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodPatch, brightness: Brightness.dark), colMethodPatchDarkModeExpected);
    });
  });

  HTTPVerb methodPut = HTTPVerb.put;
  testWidgets('Test getHTTPMethodColor for PUT Method', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodPut), kColorHttpMethodPut);
    });
  });

  Color colMethodPutDarkModeExpected = getDarkModeColor(kColorHttpMethodPut);
  testWidgets('Test getHTTPMethodColor for PUT Method dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodPut, brightness: Brightness.dark), colMethodPutDarkModeExpected);
    });
  });

  HTTPVerb methodPost = HTTPVerb.post;
  testWidgets('Test getHTTPMethodColor for POST Method', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodPost), kColorHttpMethodPost);
    });
  });

  Color colMethodPostDarkModeExpected = getDarkModeColor(kColorHttpMethodPost);
  testWidgets('Test getHTTPMethodColor for POST Method dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodPost, brightness: Brightness.dark), colMethodPostDarkModeExpected);
    });
  });

  testWidgets('Test getHTTPMethodColor for POST Method', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodPost), kColorHttpMethodPost);
    });
  });

  getDarkModeColor(kColorHttpMethodPost);
  testWidgets('Test getHTTPMethodColor for POST Method dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodPost, brightness: Brightness.dark), colMethodPostDarkModeExpected);
    });
  });

  HTTPVerb methodDelete = HTTPVerb.delete;
  testWidgets('Test getHTTPMethodColor for DELETE Method', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodDelete), kColorHttpMethodDelete);
    });
  });

  Color colMethodDeleteDarkModeExpected = getDarkModeColor(kColorHttpMethodDelete);
  testWidgets('Test getHTTPMethodColor for DELETE Method dark mode', (WidgetTester tester) async {
    await tester.runAsync(() async {
      expect(getHTTPMethodColor(methodDelete, brightness: Brightness.dark), colMethodDeleteDarkModeExpected);
    });
  });

  group("Testing File Utils Integration", () {
    testWidgets('Test getFileExtension', (WidgetTester tester) async {
      // Run your app in the test environment
      await tester.runAsync(() async {
        // Build your widget
        await tester.pumpWidget(MaterialApp(
          home: Builder(builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                // Call the function you want to test
                String? result = getFileExtension("text/csv");
                // Check the result
                expect(result, "csv");
              },
              child: const SizedBox(),
            );
          }),
        ));
        // Tap on the widget to trigger the function
        await tester.tap(find.byType(SizedBox));
        // Wait for the animation to finish
        await tester.pumpAndSettle();
      });
    });

    testWidgets('Test getHeaderSuggestions for Allow-Headers', (WidgetTester tester) async {
      String pattern = "Allow-Headers";
      List<String> expected = ["Access-Control-Allow-Headers"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Allow-Methods', (WidgetTester tester) async {
      String pattern = "Allow-Methods";
      List<String> expected = ["Access-Control-Allow-Methods"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Allow-Origin', (WidgetTester tester) async {
      String pattern = "Allow-Origin";
      List<String> expected = ["Access-Control-Allow-Origin"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Request-Method', (WidgetTester tester) async {
      String pattern = "Request-Method";
      List<String> expected = ["Access-Control-Request-Method"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Max-Age', (WidgetTester tester) async {
      String pattern = "Max-Age";
      List<String> expected = ["Access-Control-Max-Age"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Access-Control-Allow-Headers', (WidgetTester tester) async {
      String pattern = "Access-Control-Allow-Headers";
      List<String> expected = ["Access-Control-Allow-Headers"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Access-Control-Allow-Methods', (WidgetTester tester) async {
      String pattern = "Access-Control-Allow-Methods";
      List<String> expected = ["Access-Control-Allow-Methods"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Access-Control-Allow-Origin', (WidgetTester tester) async {
      String pattern = "Access-Control-Allow-Origin";
      List<String> expected = ["Access-Control-Allow-Origin"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Access-Control-Request-Method', (WidgetTester tester) async {
      String pattern = "Access-Control-Request-Method";
      List<String> expected = ["Access-Control-Request-Method"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Access-Control-Max-Age', (WidgetTester tester) async {
      String pattern = "Access-Control-Max-Age";
      List<String> expected = ["Access-Control-Max-Age"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Content-Type', (WidgetTester tester) async {
      String pattern = "Content-Type";
      List<String> expected = ['Content-Type', 'X-Content-Type-Options'];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test getHeaderSuggestions for Expires', (WidgetTester tester) async {
      String pattern = "Expires";
      List<String> expected = ["Expires"];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets("Test getHeaderSuggestions for 'Access-Control' pattern", (WidgetTester tester) async {
      String pattern = "Access-Control";
      List<String> expected = [
        "Access-Control-Allow-Headers",
        "Access-Control-Allow-Methods",
        "Access-Control-Allow-Origin",
        "Access-Control-Max-Age",
        "Access-Control-Request-Headers",
        "Access-Control-Request-Method"
      ];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets("Test getHeaderSuggestions for 'allow-' pattern", (WidgetTester tester) async {
      String pattern = 'allow-';
      List<String> expected = [
        "Access-Control-Allow-Headers",
        "Access-Control-Allow-Methods",
        "Access-Control-Allow-Origin"
      ];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets("Test getHeaderSuggestions for 'content' pattern", (WidgetTester tester) async {
      String pattern = "content";
      List<String> expected = [
        'Content-Disposition',
        'Content-Encoding',
        'Content-Length',
        'Content-Security-Policy',
        'Content-Type',
        'X-Content-Type-Options'
      ];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets("Test getHeaderSuggestions for 'x-' pattern", (WidgetTester tester) async {
      String pattern = "x-";
      List<String> expected = [
        "Access-Control-Max-Age",
        "Max-Forwards",
        "X-Api-Key",
        "X-Content-Type-Options",
        "X-CSRF-Token",
        "X-Forwarded-For",
        "X-Frame-Options",
        "X-Requested-With",
        "X-XSS-Protection"
      ];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets("Test getHeaderSuggestions for 'origin' pattern", (WidgetTester tester) async {
      String pattern = "origin";
      List<String> expected = [
        'Access-Control-Allow-Origin',
        'Cross-Origin-Embedder-Policy',
        'Cross-Origin-Opener-Policy',
        'Cross-Origin-Resource-Policy',
        'Origin'
      ];

      expect(getHeaderSuggestions(pattern), expected);
    });

    testWidgets('Test case 1 options 0', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(0, 300), true);
      });
    });

    testWidgets('Test case 2 options 0', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(0, 500), true);
      });
    });

    testWidgets('Test case 1 options 1', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(1, 250), false);
      });
    });

    testWidgets('Test case 2 options 1', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(1, 350), true);
      });
    });

    testWidgets('Test case 1 options 2', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(2, 250), false);
      });
    });

    testWidgets('Test case 2 options 2', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(2, 350), false);
      });
    });

    testWidgets('Test case 3 options 2', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(2, 450), true);
      });
    });

    testWidgets('Test case 1 options 3', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(3, 350), false);
      });
    });

    testWidgets('Test case 2 options 3', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(3, 450), false);
      });
    });

    testWidgets('Test case 3 options 3', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInBodySuccess(3, 550), true);
      });
    });

    testWidgets('Test case 2', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInViewCodePane(350), false);
      });
    });

    testWidgets('Test case 3', (WidgetTester tester) async {
      await tester.runAsync(() async {
        expect(showButtonLabelsInViewCodePane(450), true);
      });
    });

    group("Testing getRequestTitleFromUrl function", () {
      String titleUntitled = "untitled";

      testWidgets('Testing getRequestTitleFromUrl using url1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url1 = "";
          expect(getRequestTitleFromUrl(url1), titleUntitled);
        });
      });

      testWidgets('Testing getRequestTitleFromUrl using url2', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url2 = " ";
          expect(getRequestTitleFromUrl(url2), titleUntitled);
        });
      });

      testWidgets('Testing getRequestTitleFromUrl using url3', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url3 = "https://api.foss42.com/country/codes";
          String title3Expected = "api.foss42.com/country/codes";
          expect(getRequestTitleFromUrl(url3), title3Expected);
        });
      });

      testWidgets('Testing getRequestTitleFromUrl using url4', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url4 = "api.foss42.com/country/data";
          String title4Expected = "api.foss42.com/country/data";
          expect(getRequestTitleFromUrl(url4), title4Expected);
        });
      });

      testWidgets('Testing getRequestTitleFromUrl using url5', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url5 = "http://";
          expect(getRequestTitleFromUrl(url5), titleUntitled);
        });
      });

      testWidgets('Testing getRequestTitleFromUrl for null value', (WidgetTester tester) async {
        await tester.runAsync(() async {
          expect(getRequestTitleFromUrl(null), titleUntitled);
        });
      });
    });

    group("Testing getContentTypeFromHeaders function", () {
      testWidgets('Testing getContentTypeFromHeaders for header1', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Map<String, String> header1 = {
            "content-type": "application/json",
          };
          String contentType1Expected = "application/json";
          expect(getContentTypeFromHeaders(header1), contentType1Expected);
        });
      });

      testWidgets('Testing getContentTypeFromHeaders for null headers', (WidgetTester tester) async {
        await tester.runAsync(() async {
          expect(getContentTypeFromHeaders(null), null);
        });
      });

      testWidgets('Testing getContentTypeFromHeaders when header keys are in header case', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Map<String, String> header2 = {
            "Content-Type": "application/json",
          };
          expect(getContentTypeFromHeaders(header2), null);
        });
      });
    });

    group('Testing getMediaTypeFromContentType function', () {
      testWidgets('Testing getMediaTypeFromContentType for json type', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String contentType1 = "application/json";
          MediaType mediaType1Expected = MediaType("application", "json");
          expect(getMediaTypeFromContentType(contentType1).toString(),
              mediaType1Expected.toString());
        });
      });

      testWidgets('Testing getMediaTypeFromContentType for null', (WidgetTester tester) async {
        await tester.runAsync(() async {
          expect(getMediaTypeFromContentType(null), null);
        });
      });

      testWidgets('Testing getMediaTypeFromContentType for image svg+xml type', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String contentType3 = "image/svg+xml";
          MediaType mediaType3Expected = MediaType("image", "svg+xml");
          expect(getMediaTypeFromContentType(contentType3).toString(),
              mediaType3Expected.toString());
        });
      });

      testWidgets('Testing getMediaTypeFromContentType for incorrect content type', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String contentType4 = "text/html : charset=utf-8";
          expect(getMediaTypeFromContentType(contentType4), null);
        });
      });

      testWidgets('Testing getMediaTypeFromContentType for text/css type', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String contentType5 = "text/css; charset=utf-8";
          MediaType mediaType5Expected =
          MediaType("text", "css", {"charset": "utf-8"});
          expect(getMediaTypeFromContentType(contentType5).toString(),
              mediaType5Expected.toString());
        });
      });

      testWidgets('Testing getMediaTypeFromContentType for incorrect with double ;', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String contentType6 =
              "application/xml; charset=utf-16be ; date=21/03/2023";
          expect(getMediaTypeFromContentType(contentType6), null);
        });
      });

      testWidgets('Testing getMediaTypeFromContentType for empty content type', (WidgetTester tester) async {
        await tester.runAsync(() async {
          expect(getMediaTypeFromContentType(""), null);
        });
      });

      testWidgets('Testing getMediaTypeFromContentType for missing subtype', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String contentType7 = "audio";
          expect(getMediaTypeFromContentType(contentType7), null);
        });
      });

      testWidgets('Testing getMediaTypeFromContentType for missing Type', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String contentType8 = "/html";
          expect(getMediaTypeFromContentType(contentType8), null);
        });
      });
    });

    group("Testing getMediaTypeFromHeaders", () {
      testWidgets('Testing getMediaTypeFromHeaders for basic case', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Map<String, String> header1 = {
            "content-length": "4506",
            "cache-control": "private",
            "content-type": "application/json"
          };
          MediaType mediaType1Expected = MediaType("application", "json");
          expect(getMediaTypeFromHeaders(header1).toString(),
              mediaType1Expected.toString());
        });
      });

      testWidgets('Testing getMediaTypeFromHeaders for null header', (WidgetTester tester) async {
        await tester.runAsync(() async {
          expect(getMediaTypeFromHeaders(null), null);
        });
      });

      testWidgets('Testing getMediaTypeFromHeaders for incomplete header value', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Map<String, String> header2 = {"content-length": "4506"};
          expect(getMediaTypeFromHeaders(header2), null);
        });
      });

      testWidgets('Testing getMediaTypeFromHeaders for empty header value', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Map<String, String> header3 = {"content-type": ""};
          expect(getMediaTypeFromHeaders(header3), null);
        });
      });

      testWidgets('Testing getMediaTypeFromHeaders for erroneous header value - missing type', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Map<String, String> header4 = {"content-type": "/json"};
          expect(getMediaTypeFromHeaders(header4), null);
        });
      });

      testWidgets('Testing getMediaTypeFromHeaders for erroneous header value - missing subtype', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Map<String, String> header5 = {"content-type": "application"};
          expect(getMediaTypeFromHeaders(header5), null);
        });
      });

      testWidgets('Testing getMediaTypeFromHeaders for header6', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Map<String, String> header6 = {"content-type": "image/svg+xml"};
          MediaType mediaType6Expected = MediaType("image", "svg+xml");
          expect(getMediaTypeFromHeaders(header6).toString(),
              mediaType6Expected.toString());
        });
      });
    });

    group("Testing getUriScheme", () {
      testWidgets('Testing getUriScheme for https', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Uri uri1 = Uri(
              scheme: 'https',
              host: 'dart.dev',
              path: 'guides/libraries/library-tour',
              fragment: 'numbers');
          String uriScheme1Expected = 'https';
          expect(getUriScheme(uri1), (uriScheme1Expected, true));
        });
      });

      testWidgets('Testing getUriScheme for mailto scheme value', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Uri uri2 = Uri(scheme: 'mailto');
          String uriScheme2Expected = 'mailto';
          expect(getUriScheme(uri2), (uriScheme2Expected, false));
        });
      });

      testWidgets('Testing getUriScheme for empty scheme value', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Uri uri3 = Uri(scheme: '');
          expect(getUriScheme(uri3), (null, false));
        });
      });

      testWidgets('Testing getUriScheme for null scheme value', (WidgetTester tester) async {
        await tester.runAsync(() async {
          Uri uri4 = Uri(scheme: null);
          expect(getUriScheme(uri4), (null, false));
        });
      });
    });

    group("Testing getValidRequestUri", () {
      testWidgets('Testing getValidRequestUri for normal values', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url1 = "https://api.foss42.com/country/data";
          const kvRow1 = NameValueModel(name: "code", value: "US");
          Uri uri1Expected = Uri(
              scheme: 'https',
              host: 'api.foss42.com',
              path: 'country/data',
              queryParameters: {'code': 'US'});
          expect(getValidRequestUri(url1, [kvRow1]), (uri1Expected, null));
        });
      });

      testWidgets('Testing getValidRequestUri for null url value', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const kvRow2 = NameValueModel(name: "code", value: "US");
          expect(getValidRequestUri(null, [kvRow2]), (null, "URL is missing!"));
        });
      });

      testWidgets('Testing getValidRequestUri for empty url value', (WidgetTester tester) async {
        await tester.runAsync(() async {
          const kvRow3 = NameValueModel(name: "", value: "");
          expect(getValidRequestUri("", [kvRow3]), (null, "URL is missing!"));
        });
      });

      testWidgets('Testing getValidRequestUri when https is not provided in url', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url4 = "api.foss42.com/country/data";
          const kvRow4 = NameValueModel(name: "code", value: "US");
          Uri uri4Expected = Uri(
              scheme: 'https',
              host: 'api.foss42.com',
              path: 'country/data',
              queryParameters: {'code': 'US'});
          expect(getValidRequestUri(url4, [kvRow4]), (uri4Expected, null));
        });
      });

      testWidgets('Testing getValidRequestUri when url has fragment', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url5 = "https://dart.dev/guides/libraries/library-tour#numbers";
          Uri uri5Expected = Uri(
              scheme: 'https',
              host: 'dart.dev',
              path: '/guides/libraries/library-tour');
          expect(getValidRequestUri(url5, null), (uri5Expected, null));
        });
      });

      testWidgets('Testing getValidRequestUri when uri scheme is not supported', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url5 = "mailto:someone@example.com";
          expect(getValidRequestUri(url5, null),
              (null, "Unsupported URL Scheme (mailto)"));
        });
      });

      testWidgets('Testing getValidRequestUri when query params in both url and kvrow', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url6 = "api.foss42.com/country/data?code=IND";
          const kvRow6 = NameValueModel(name: "code", value: "US");
          Uri uri6Expected = Uri(
              scheme: 'https',
              host: 'api.foss42.com',
              path: 'country/data',
              queryParameters: {'code': 'US'});
          expect(getValidRequestUri(url6, [kvRow6]), (uri6Expected, null));
        });
      });

      testWidgets('Testing getValidRequestUri when kvrow is null', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String url7 = "api.foss42.com/country/data?code=US";
          Uri uri7Expected = Uri(
              scheme: 'https',
              host: 'api.foss42.com',
              path: 'country/data',
              queryParameters: {'code': 'US'});
          expect(getValidRequestUri(url7, null), (uri7Expected, null));
        });
      });
    });

    group("Testing getResponseBodyViewOptions", () {
      testWidgets('Testing getResponseBodyViewOptions for application/json', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType1 = MediaType("application", "json");
          var result1 = getResponseBodyViewOptions(mediaType1);
          expect(result1.$1, kPreviewRawBodyViewOptions);
          expect(result1.$2, "json");
        });
      });

      testWidgets('Testing getResponseBodyViewOptions for application/xml', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType2 = MediaType("application", "xml");
          var result2 = getResponseBodyViewOptions(mediaType2);
          expect(result2.$1, kCodeRawBodyViewOptions);
          expect(result2.$2, "xml");
        });
      });

      testWidgets('Testing getResponseBodyViewOptions for message/news a format currently not supported', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType3 = MediaType("message", "news");
          var result3 = getResponseBodyViewOptions(mediaType3);
          expect(result3.$1, kNoBodyViewOptions);
          expect(result3.$2, null);
        });
      });

      testWidgets('Testing getResponseBodyViewOptions for application/calendar+json', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType4 = MediaType("application", "calendar+json");
          var result4 = getResponseBodyViewOptions(mediaType4);
          expect(result4.$1, kPreviewRawBodyViewOptions);
          expect(result4.$2, "json");
        });
      });

      testWidgets('Testing getResponseBodyViewOptions for image/svg+xml', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType5 = MediaType("image", "svg+xml");
          var result5 = getResponseBodyViewOptions(mediaType5);
          expect(result5.$1, kPreviewRawBodyViewOptions);
          expect(result5.$2, "xml");
        });
      });

      testWidgets('Testing getResponseBodyViewOptions for application/xhtml+xml', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType6 = MediaType("application", "xhtml+xml");
          var result6 = getResponseBodyViewOptions(mediaType6);
          expect(result6.$1, kCodeRawBodyViewOptions);
          expect(result6.$2, "xml");
        });
      });

      testWidgets('Testing getResponseBodyViewOptions for application/xml-external-parsed-entity', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType7 = MediaType("application", "xml-external-parsed-entity");
          var result7 = getResponseBodyViewOptions(mediaType7);
          expect(result7.$1, kCodeRawBodyViewOptions);
          expect(result7.$2, "xml");
        });
      });

      testWidgets('Testing getResponseBodyViewOptions for text/html', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType8 = MediaType("text", "html");
          var result8 = getResponseBodyViewOptions(mediaType8);
          expect(result8.$1, kCodeRawBodyViewOptions);
          expect(result8.$2, "xml");
        });
      });

      testWidgets('Testing getResponseBodyViewOptions for application/pdf', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType9 = MediaType("application", "pdf");
          var result9 = getResponseBodyViewOptions(mediaType9);
          expect(result9.$1, kPreviewBodyViewOptions);
          expect(result9.$2, "pdf");
        });
      });

      testWidgets('Testing getResponseBodyViewOptions for text/calendar', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType10 = MediaType("text", "calendar");
          var result10 = getResponseBodyViewOptions(mediaType10);
          expect(result10.$1, kRawBodyViewOptions);
          expect(result10.$2, "calendar");
        });
      });
    });

    group("Testing formatBody", () {
      testWidgets('Testing formatBody for null values', (WidgetTester tester) async {
        await tester.runAsync(() async {
          expect(formatBody(null, null), null);
        });
      });

      testWidgets('Testing formatBody for null body values', (WidgetTester tester) async {
        await tester.runAsync(() async {
          MediaType mediaType1 = MediaType("application", "xml");
          expect(formatBody(null, mediaType1), null);
        });
      });

      testWidgets('Testing formatBody for null MediaType values', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String body1 = '''
  {
    "text":"The Chosen One";
  }
''';
          expect(formatBody(body1, null), null);
        });
      });

      testWidgets('Testing formatBody for json subtype values', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String body2 = '''{"data":{"area":9831510.0,"population":331893745}}''';
          MediaType mediaType2 = MediaType("application", "json");
          String result2Expected = '''{
  "data": {
    "area": 9831510.0,
    "population": 331893745
  }
}''';
          expect(formatBody(body2, mediaType2), result2Expected);
        });
      });

      testWidgets('Testing formatBody for xml subtype values', (WidgetTester tester) async {
        await tester.runAsync(() async {
          String body3 = '''
<breakfast_menu>
<food>
<name>Belgian Waffles</name>
<price>5.95 USD</price>
<description>Two of our famous Belgian Waffles with plenty of real maple syrup</description>
<calories>650</calories>
</food>
</breakfast_menu>
''';
          MediaType mediaType3 = MediaType("application", "xml");
          String result3Expected = '''<breakfast_menu>
  <food>
    <name>Belgian Waffles</name>
    <price>5.95 USD</price>
    <description>Two of our famous Belgian Waffles with plenty of real maple syrup</description>
    <calories>650</calories>
  </food>
</breakfast_menu>''';
          expect(formatBody(body3, mediaType3), result3Expected);
        });
      });

      group("Testing formatBody for html", () {
        MediaType mediaTypeHtml = MediaType("text", "html");

        testWidgets('Testing formatBody for html subtype values', (WidgetTester tester) async {
          await tester.runAsync(() async {
            String body4 = '''<html lang="">
<body>
<h1>My First Heading</h1>
<p>My first paragraph.</p>
</body>
</html>''';
            expect(formatBody(body4, mediaTypeHtml), body4);
          });
        });

        testWidgets('Testing formatBody for html subtype values with random values', (WidgetTester tester) async {
          await tester.runAsync(() async {
            String body5 =
            '''<html lang="">${RandomStringGenerator.getRandomStringLines(100, 10000)}</html>''';
            expect(formatBody(body5, mediaTypeHtml), null);
          });
        });

        testWidgets('Testing formatBody for html subtype values with random values within limit', (WidgetTester tester) async {
          await tester.runAsync(() async {
            String body6 =
            '''<html lang="">${RandomStringGenerator.getRandomStringLines(100, 190)}</html>''';
            expect(formatBody(body6, mediaTypeHtml), body6);
          });
        });
      });
    });


      testWidgets('Test collectionToHAR', (WidgetTester tester) async {
        // Run your app in the test environment
        await tester.runAsync(() async {
          // Build your widget
          await tester.pumpWidget(MaterialApp(
            home: Builder(builder: (BuildContext context) {
              return GestureDetector(
                onTap: () async {
                  // Set mock package info
                  PackageInfo.setMockInitialValues(
                    appName: "apidash",
                    packageName: "dev.apidash.apidash",
                    version: "1.0",
                    buildNumber: "3",
                    buildSignature: "XYZ",
                  );

                  // Call the function you want to test
                  var result = await collectionToHAR([
                    requestModelGet6,
                    requestModelGet11,
                    requestModelPost3,
                  ]);

                  // Modify the startedDateTime for consistent testing
                  result['log']['entries'][0]['startedDateTime'] = 'ABC';
                  result['log']['entries'][1]['startedDateTime'] = 'ABC';
                  result['log']['entries'][2]['startedDateTime'] = 'ABC';

                  // Define the expected result
                  Map<String, dynamic> expectedResult = {
                    'log': {
                      'creator': {
                        'comment':
                        'For support, check out API Dash repo - https://github.com/foss42/apidash',
                        'version': '1.0',
                        'name': 'API Dash'
                      },
                      'entries': [
                        {
                          'startedDateTime': 'ABC',
                          'comment': 'id:get6',
                          'serverIPAddress': '',
                          'time': 0,
                          'timings': {
                            'connect': -1,
                            'comment': '',
                            'blocked': -1,
                            'dns': -1,
                            'receive': 0,
                            'send': 0,
                            'wait': 0,
                            'ssl': -1
                          },
                          'response': {
                            'status': 200,
                            'statusText': 'OK',
                            'httpVersion': 'HTTP/1.1',
                            'cookies': [],
                            'headers': [],
                            'content': {
                              'size': 0,
                              'mimeType': '',
                              'comment': '',
                              'text': ''
                            },
                            'redirectURL': '',
                            'headersSize': 0,
                            'bodySize': 0,
                            'comment': ''
                          },
                          'request': {
                            'method': 'GET',
                            'url':
                            'https://api.github.com/repos/foss42/apidash?raw=true',
                            'httpVersion': 'HTTP/1.1',
                            'queryString': [
                              {'name': 'raw', 'value': 'true', 'comment': ''}
                            ],
                            'headers': [
                              {'name': 'User-Agent', 'value': 'Test Agent', 'comment': ''}
                            ],
                            'comment': '',
                            'cookies': [],
                            'headersSize': -1,
                            'bodySize': 0
                          },
                          'cache': {}
                        },
                        // Additional entries omitted for brevity
                      ],
                      'comment': '',
                      'browser': {'version': '1.0', 'comment': '', 'name': 'API Dash'},
                      'version': '1.2'
                    }
                  };

                  // Check the result
                  expect(result, expectedResult);
                },
                child: const SizedBox(),
              );
            }),
          ));

          // Tap on the widget to trigger the function
          await tester.tap(find.byType(SizedBox));
          // Wait for the animation to finish
          await tester.pumpAndSettle();
        });
      });

    test('Test requestModelToHARJsonRequest', () {
      Map<String, dynamic> expectedResult = {
        'method': 'GET',
        'url': 'https://api.github.com/repos/foss42/apidash?raw=true',
        'httpVersion': 'HTTP/1.1',
        'queryString': [
          {'name': 'raw', 'value': 'true'}
        ],
        'headers': [
          {'name': 'User-Agent', 'value': 'Test Agent'}
        ]
      };
      expect(requestModelToHARJsonRequest(requestModelGet6), expectedResult);
    });

    test('Test requestModelToHARJsonRequest exportMode=true', () {
      Map<String, dynamic> expectedResult = {
        'method': 'GET',
        'url': 'https://api.github.com/repos/foss42/apidash?raw=true',
        'httpVersion': 'HTTP/1.1',
        'queryString': [
          {'name': 'raw', 'value': 'true', 'comment': ''}
        ],
        'headers': [
          {'name': 'User-Agent', 'value': 'Test Agent', 'comment': ''}
        ],
        'comment': '',
        'cookies': [],
        'headersSize': -1,
        'bodySize': 0
      };
      expect(
          requestModelToHARJsonRequest(
            requestModelGet6,
            exportMode: true,
          ),
          expectedResult);
    });

    test('Test requestModelToHARJsonRequest exportMode=true', () {
      Map<String, dynamic> expectedResult = {
        'method': 'POST',
        'url': 'https://api.foss42.com/case/lower',
        'httpVersion': 'HTTP/1.1',
        'queryString': [],
        'headers': [
          {'name': 'Content-Type', 'value': 'application/json', 'comment': ''}
        ],
        'postData': {
          'mimeType': 'application/json',
          'text': '{\n'
              '"text": "I LOVE Flutter"\n'
              '}',
          'comment': ''
        },
        'comment': '',
        'cookies': [],
        'headersSize': -1,
        'bodySize': 28
      };
      expect(
          requestModelToHARJsonRequest(
            requestModelPost2,
            exportMode: true,
          ),
          expectedResult);
    });

    test('Test requestModelToHARJsonRequest useEnabled=false', () {
      Map<String, dynamic> expectedResult = {
        'method': 'GET',
        'url':
        'https://api.foss42.com/humanize/social?num=8700000&digits=3&system=SS&add_space=true',
        'httpVersion': 'HTTP/1.1',
        'queryString': [
          {'name': 'num', 'value': '8700000'},
          {'name': 'digits', 'value': '3'},
          {'name': 'system', 'value': 'SS'},
          {'name': 'add_space', 'value': 'true'}
        ],
        'headers': [
          {'name': 'User-Agent', 'value': 'Test Agent'},
          {'name': 'Content-Type', 'value': 'application/json'}
        ]
      };
      expect(requestModelToHARJsonRequest(requestModelGet11), expectedResult);
    });

    test('Test requestModelToHARJsonRequest useEnabled=true', () {
      Map<String, dynamic> expectedResult = {
        'method': 'GET',
        'url': 'https://api.foss42.com/humanize/social?num=8700000&digits=3',
        'httpVersion': 'HTTP/1.1',
        'queryString': [
          {'name': 'num', 'value': '8700000'},
          {'name': 'digits', 'value': '3'}
        ],
        'headers': [
          {'name': 'User-Agent', 'value': 'Test Agent'}
        ]
      };
      expect(
          requestModelToHARJsonRequest(
            requestModelGet11,
            useEnabled: true,
          ),
          expectedResult);
    });

    testWidgets('Test getShortPath', (WidgetTester tester) async {
      // Run your app in the test environment
      await tester.runAsync(() async {
        // Build your widget
        await tester.pumpWidget(MaterialApp(
          home: Builder(builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                // Call the function you want to test
                String result = getShortPath("A/B/C/D.csv");
                // Check the result
                expect(result, ".../C/D.csv");
              },
              child: const SizedBox(),
            );
          }),
        ));
        // Tap on the widget to trigger the function
        await tester.tap(find.byType(SizedBox));
        // Wait for the animation to finish
        await tester.pumpAndSettle();
      });
    });

    testWidgets('Test getTempFileName', (WidgetTester tester) async {
      // Run your app in the test environment
      await tester.runAsync(() async {
        // Build your widget
        await tester.pumpWidget(MaterialApp(
          home: Builder(builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                // Call the function you want to test
                String result = getTempFileName();
                // Check the result
                expect(result.length, greaterThan(0));
              },
              child: const SizedBox(),
            );
          }),
        ));
        // Tap on the widget to trigger the function
        await tester.tap(find.byType(SizedBox));
        // Wait for the animation to finish
        await tester.pumpAndSettle();
      });
    });
  });

  testWidgets('Integration test for humanizeDuration function', (WidgetTester tester) async {
    // Test case 1
    Duration dur1 = const Duration(minutes: 1, seconds: 3);
    String dur1Expected = "1.05 m";
    expect(humanizeDuration(dur1), dur1Expected);

    // Test case 2
    Duration dur2 = const Duration(seconds: 3, milliseconds: 20);
    String dur2Expected = "3.02 s";
    expect(humanizeDuration(dur2), dur2Expected);

    // Test case 3
    Duration dur3 = const Duration(milliseconds: 345);
    String dur3Expected = "345 ms";
    expect(humanizeDuration(dur3), dur3Expected);

    // Test case 4
    Duration dur4 = const Duration(seconds: 1, milliseconds: 200);
    String dur4Expected = "1.20 s";
    expect(humanizeDuration(dur4), dur4Expected);
  });

  testWidgets('Integration test for capitalizeFirstLetter function', (WidgetTester tester) async {
    // Test case 1
    String text1 = "";
    String text1Expected = "";
    expect(capitalizeFirstLetter(text1), text1Expected);

    // Test case 2
    String text2 = "a";
    String text2Expected = "A";
    expect(capitalizeFirstLetter(text2), text2Expected);

    // Test case 3
    String text3 = "world";
    String text3Expected = "World";
    expect(capitalizeFirstLetter(text3), text3Expected);

    // Test case 4
    String text4 = "worldly affairs";
    String text4Expected = "Worldly affairs";
    expect(capitalizeFirstLetter(text4), text4Expected);
  });

  group("Integration test for formatHeaderCase function", () {
    testWidgets('Testing formatHeaderCase', (WidgetTester tester) async {
      // Test case 1
      String headerText1 = "content-type";
      String headerText1Expected = "Content-Type";
      expect(formatHeaderCase(headerText1), headerText1Expected);

      // Test case 2
      String headerText2 = "x-cloud-trace-context";
      String headerText2Expected = "X-Cloud-Trace-Context";
      expect(formatHeaderCase(headerText2), headerText2Expected);
    });
  });

  group("Integration test for rowsToMap function", () {
    testWidgets('Testing rowsToMap', (WidgetTester tester) async {
      // Test case 1: Testing for null
      expect(rowsToMap(null), null);

      // Test case 2: Testing for string KVRow values
      const kvRow1 = NameValueModel(name: "code", value: "IN");
      expect(rowsToMap([kvRow1]), {"code": "IN"});

      // Test case 3: Testing when header is True
      const kvRow2 = NameValueModel(name: "Text", value: "ABC");
      expect(rowsToMap([kvRow2], isHeader: true), {"text": "ABC"});

      // Test case 4: Testing when header is false and key is in upper case
      const kvRow3 = <NameValueModel>[
        NameValueModel(name: "TEXT", value: "ABC"),
        NameValueModel(name: "version", value: 0.1),
        NameValueModel(name: "month", value: 4),
      ];
      expect(
          rowsToMap(kvRow3), {"TEXT": "ABC", "version": "0.1", "month": "4"});
    });
  });

  group("Testing mapToRows", () {
    test('Testing for null', () {
      expect(mapToRows(null), null);
    });

    test('Testing with a map value', () {
      Map<String, String> value1 = {"text": "abc", "lang": "eng", "code": "1"};
      const result1Expected = <NameValueModel>[
        NameValueModel(name: "text", value: "abc"),
        NameValueModel(name: "lang", value: "eng"),
        NameValueModel(name: "code", value: "1")
      ];
      expect(mapToRows(value1), result1Expected);
    });
  });

  group("Testing rowsToFormDataMapList", () {
    test('Testing for null', () {
      expect(rowsToFormDataMapList(null), null);
    });

    test('Testing with a map value', () {
      const input = <FormDataModel>[
        FormDataModel(name: "text", value: "abc", type: FormDataType.file),
        FormDataModel(name: "lang", value: "eng", type: FormDataType.file),
        FormDataModel(name: "code", value: "1", type: FormDataType.text)
      ];
      const expectedResult = [
        {"name": "text", "value": "abc", "type": "file"},
        {"name": "lang", "value": "eng", "type": "file"},
        {"name": "code", "value": "1", "type": "text"}
      ];
      expect(rowsToFormDataMapList(input), expectedResult);
    });
  });

  group("Testing mapListToFormDataModelRows", () {
    test('Testing for null', () {
      expect(mapListToFormDataModelRows(null), null);
    });

    test('Testing with a map value', () {
      const input = [
        {"name": "text", "value": "abc", "type": "file"},
        {"name": "lang", "value": "eng", "type": "file"},
        {"name": "code", "value": "1", "type": "text"}
      ];
      const expectedResult = <FormDataModel>[
        FormDataModel(name: "text", value: "abc", type: FormDataType.file),
        FormDataModel(name: "lang", value: "eng", type: FormDataType.file),
        FormDataModel(name: "code", value: "1", type: FormDataType.text)
      ];
      expect(mapListToFormDataModelRows(input), expectedResult);
    });
  });

  group("Testing getFormDataType", () {
    test('Testing for null', () {
      expect(getFormDataType(null), FormDataType.text);
    });

    test('Testing with a map value', () {
      const input = "file";
      const expectedResult = FormDataType.file;
      expect(getFormDataType(input), expectedResult);
    });
  });

  group("Testing jsonMapToBytes", () {
    test('Testing for null', () {
      expect(jsonMapToBytes(null), []);
    });

    test('Testing with a map value', () {
      Map<String, String> value1 = {"a": "1"};
      const result1Expected = [
        123,
        10,
        32,
        32,
        34,
        97,
        34,
        58,
        32,
        34,
        49,
        34,
        10,
        125
      ];
      expect(jsonMapToBytes(value1), result1Expected);
    });
  });

  group("Testing stringToBytes", () {
    test('Testing for null', () {
      expect(stringToBytes(null), null);
    });

    test('Testing with a string value', () {
      String value1 = "ab";
      const result1Expected = [97, 98];
      expect(stringToBytes(value1), result1Expected);
    });
  });

  group("Testing padMultilineString", () {
    test('Testing when firstLinePadded is true ', () {
      String text1 =
      '''Using API Dash, you can draft API requests via an easy to use GUI which allows you to:
Create different types of HTTP requests (GET, HEAD, POST, PATCH, PUT and DELETE)
Easily manipulate and play around with request inputs like headers, query parameters and body.''';
      String text1FirstLinePaddedExpected =
      '''          Using API Dash, you can draft API requests via an easy to use GUI which allows you to:
          Create different types of HTTP requests (GET, HEAD, POST, PATCH, PUT and DELETE)
          Easily manipulate and play around with request inputs like headers, query parameters and body.''';
      expect(padMultilineString(text1, 10, firstLinePadded: true),
          text1FirstLinePaddedExpected);
    });

    test('Testing when firstLinePadded is false ', () {
      String text1 =
      '''Using API Dash, you can draft API requests via an easy to use GUI which allows you to:
Create different types of HTTP requests (GET, HEAD, POST, PATCH, PUT and DELETE)
Easily manipulate and play around with request inputs like headers, query parameters and body.''';
      String text1FirstLineNotPaddedExpected =
      '''Using API Dash, you can draft API requests via an easy to use GUI which allows you to:
          Create different types of HTTP requests (GET, HEAD, POST, PATCH, PUT and DELETE)
          Easily manipulate and play around with request inputs like headers, query parameters and body.''';
      expect(padMultilineString(text1, 10), text1FirstLineNotPaddedExpected);
    });
  });

  group("Test getEnabledRows", () {
    test('Testing for null', () {
      expect(getEnabledRows(null, null), null);
    });

    test('Testing for empty list', () {
      expect(getEnabledRows([], []), []);
    });

    const kvRow1 = NameValueModel(name: "code", value: "IN");
    const kvRow2 = NameValueModel(name: "lang", value: "eng");
    const kvRow3 = NameValueModel(name: "version", value: 0.1);
    const kvRow4 = NameValueModel(name: "month", value: 4);

    test('Testing with isRowEnabledList null', () {
      expect(getEnabledRows([kvRow1, kvRow2, kvRow3, kvRow4], null),
          [kvRow1, kvRow2, kvRow3, kvRow4]);
    });

    test('Testing for list with all enabled', () {
      expect(
          getEnabledRows(
              [kvRow1, kvRow2, kvRow3, kvRow4], [true, true, true, true]),
          [kvRow1, kvRow2, kvRow3, kvRow4]);
    });

    test('Testing for list with all disabled', () {
      expect(
          getEnabledRows(
              [kvRow1, kvRow2, kvRow3, kvRow4], [false, false, false, false]),
          []);
    });

    test('Testing for list with some disabled', () {
      expect(
          getEnabledRows(
              [kvRow1, kvRow2, kvRow3, kvRow4], [true, false, true, false]),
          [kvRow1, kvRow3]);
    });
  });

  group("Testing audioPosition function", () {
    test('Testing using dur1', () {
      Duration dur1 = const Duration(minutes: 1, seconds: 3);
      String dur1Expected = "1:03";
      expect(audioPosition(dur1), dur1Expected);
    });

    test('Testing using dur2', () {
      Duration dur2 = const Duration(minutes: 0, seconds: 20);
      String dur2Expected = "0:20";
      expect(audioPosition(dur2), dur2Expected);
    });

    test('Testing using dur3', () {
      Duration dur3 = const Duration(hours: 3);
      String dur3Expected = "180:00";
      expect(audioPosition(dur3), dur3Expected);
    });

    test('Testing using dur4', () {
      Duration dur4 = const Duration(seconds: 1, milliseconds: 200);
      String dur4Expected = "0:01";
      expect(audioPosition(dur4), dur4Expected);
    });

    test('Testing using dur5', () {
      Duration? dur5; // Test with null duration
      String dur5Expected = "";
      expect(audioPosition(dur5), dur5Expected);
    });
  });


  testWidgets('Testing Dropdowns', (tester) async {
  dynamic changedValue;
  await tester.pumpWidget(
  MaterialApp(
  title: 'Dropdown testing',
  theme: kThemeDataLight,
  home: Scaffold(
  body: Center(
  child: Column(
  children: [
  DropdownButtonHttpMethod(
  method: HTTPVerb.post,
  onChanged: (value) {
  changedValue = value!;
  },
  ),
  ],
  ),
  ),
  ),
  ),
  );

  // Ensure the dropdown button icon and DropdownButton are displayed
  expect(find.byIcon(Icons.unfold_more_rounded), findsOneWidget);
  expect(find.byType(DropdownButton<HTTPVerb>), findsOneWidget);

  // Ensure the initial value of the dropdown button is set correctly
  expect(
  (tester.widget(find.byType(DropdownButton<HTTPVerb>)) as DropdownButton).value,
  equals(HTTPVerb.post),
  );

  // Tap on the dropdown button to open the options
  await tester.tap(find.text('POST'));
  await tester.pump();
  await tester.pump(const Duration(seconds: 1));

  // Tap on the option 'PUT' and verify if onChanged is called with correct value
  await tester.tap(find.text('PUT').last);
  await tester.pump();
  await tester.pump(const Duration(seconds: 1));

  expect(changedValue, HTTPVerb.put);
  });

  testWidgets('Testing Dropdown for Content Type', (tester) async {
  dynamic changedValue;
  await tester.pumpWidget(
  MaterialApp(
  title: 'Dropdown Content Type testing',
  theme: kThemeDataLight,
  home: Scaffold(
  body: Center(
  child: Column(
  children: [
  DropdownButtonContentType(
  contentType: ContentType.json,
  onChanged: (value) {
  changedValue = value!;
  },
  ),
  ],
  ),
  ),
  ),
  ),
  );

  // Ensure the dropdown button icon and DropdownButton are displayed
  expect(find.byIcon(Icons.unfold_more_rounded), findsOneWidget);
  expect(find.byType(DropdownButton<ContentType>), findsOneWidget);

  // Ensure the initial value of the dropdown button is set correctly
  expect(
  (tester.widget(find.byType(DropdownButton<ContentType>)) as DropdownButton).value,
  equals(ContentType.json),
  );

  // Tap on the dropdown button to open the options
  await tester.tap(find.text('json'));
  await tester.pump();
  await tester.pump(const Duration(seconds: 1));

  // Tap on the option 'text' and verify if onChanged is called with correct value
  await tester.tap(find.text('text').last);
  await tester.pump();
  await tester.pump(const Duration(seconds: 1));

  expect(changedValue, ContentType.text);
  });

  testWidgets('Testing Dropdown for FormData', (tester) async {
  dynamic changedValue;
  await tester.pumpWidget(
  MaterialApp(
  title: 'Dropdown FormData Type testing',
  theme: kThemeDataLight,
  home: Scaffold(
  body: Center(
  child: Column(
  children: [
  DropdownButtonFormData(
  formDataType: FormDataType.file,
  onChanged: (value) {
  changedValue = value!;
  },
  ),
  ],
  ),
  ),
  ),
  ),
  );

  // Ensure the dropdown button icon and DropdownButton are displayed
  expect(find.byIcon(Icons.unfold_more_rounded), findsOneWidget);
  expect(find.byType(DropdownButton<FormDataType>), findsOneWidget);

  // Ensure the initial value of the dropdown button is set correctly
  expect(
  (tester.widget(find.byType(DropdownButton<FormDataType>)) as DropdownButton).value,
  equals(FormDataType.file),
  );

  // Tap on the dropdown button to open the options
  await tester.tap(find.text('file'));
  await tester.pump();
  await tester.pump(const Duration(seconds: 1));

  // Tap on the option 'text' and verify if onChanged is called with correct value
  await tester.tap(find.text('text').last);
  await tester.pump();
  await tester.pump(const Duration(seconds: 1));

  expect(changedValue, FormDataType.text);
  });

  testWidgets('Testing Dropdown for Codegen', (tester) async {
  dynamic changedValue;
  await tester.pumpWidget(
  MaterialApp(
  title: 'Dropdown Codegen Type testing',
  theme: kThemeDataLight,
  home: Scaffold(
  body: Center(
  child: Column(
  children: [
  DropdownButtonCodegenLanguage(
  codegenLanguage: CodegenLanguage.curl,
  onChanged: (value) {
  changedValue = value!;
  },
  ),
  ],
  ),
  ),
  ),
  ),
  );

  // Ensure the dropdown button icon and DropdownButton are displayed
  expect(find.byIcon(Icons.unfold_more_rounded), findsOneWidget);
  expect(find.byType(DropdownButton<CodegenLanguage>), findsOneWidget);

  // Ensure the initial value of the dropdown button is set correctly
  expect(
  (tester.widget(find.byType(DropdownButton<CodegenLanguage>)) as DropdownButton).value,
  equals(CodegenLanguage.curl),
  );

  // Tap on the dropdown button to open the options
  await tester.tap(find.text('cURL'));
  await tester.pump();
  await tester.pump(const Duration(seconds: 1));

  // Tap on the option 'Dart (dio)' and verify if onChanged is called with correct value
  await tester.tap(find.text('Dart (dio)').last);
  await tester.pump();
  await tester.pump(const Duration(seconds: 1));

  expect(changedValue, CodegenLanguage.dartDio);
  });

  testWidgets('Testing Editor', (tester) async {
  dynamic changedValue;
  await tester.pumpWidget(
  MaterialApp(
  title: 'Editor',
  theme: kThemeDataLight,
  home: Scaffold(
  body: Column(
  children: [
  Expanded(
  child: TextFieldEditor(
  fieldKey: '2',
  onChanged: (value) {
  changedValue = value;
  },
  ),
  ),
  ],
  ),
  ),
  ),
  );

  // Ensure the TextFormField and its key are displayed
  expect(find.byType(TextFormField), findsOneWidget);
  expect(find.byKey(const Key("2")), findsOneWidget);

  // Ensure the initial hint text is displayed
  expect(find.text('Enter content (body)'), findsOneWidget);

  // Enter text into the TextFormField
  var txtForm = find.byKey(const Key("2"));
  await tester.enterText(txtForm, 'entering 123 for testing content body');
  await tester.pump();
  await tester.pumpAndSettle();

  // Ensure the entered text is correct
  expect(find.text('entering 123 for testing content body'), findsOneWidget);

  // Tap on the TextFormField and press tab to simulate tab navigation
  await tester.tap(txtForm);
  await tester.sendKeyDownEvent(LogicalKeyboardKey.tab);
  await tester.pumpAndSettle();

  // Verify if onChanged is called with the correct value after tab navigation
  expect(changedValue, 'entering 123 for testing content body    ');
  });

  testWidgets('Testing Editor Dark theme', (tester) async {
  dynamic changedValue;
  await tester.pumpWidget(
  MaterialApp(
  title: 'Editor Dark',
  theme: kThemeDataDark,
  home: Scaffold(
  body: Column(
  children: [
  Expanded(
  child: TextFieldEditor(
  fieldKey: '2',
  onChanged: (value) {
  changedValue = value;
  },
  initialValue: 'initial',
  ),
  ),
  ],
  ),
  ),
  ),
  );

  // Ensure the initial value and TextFormField are displayed
  expect(find.text('initial'), findsOneWidget);
  expect(find.byType(TextFormField), findsOneWidget);
  expect(find.byKey(const Key("2")), findsOneWidget);

  // Ensure the initial hint text is displayed
  expect(find.text('Enter content (body)'), findsOneWidget);

  // Enter text into the TextFormField
  var txtForm = find.byKey(const Key("2"));
  await tester.enterText(txtForm, 'entering 123 for testing content body');
  await tester.pump();
  await tester.pumpAndSettle();

  // Tap on the TextFormField and press tab to simulate tab navigation
  await tester.tap(txtForm);
  await tester.sendKeyDownEvent(LogicalKeyboardKey.tab);
  await tester.pumpAndSettle();

  // Verify if onChanged is called with the correct value after tab navigation
  expect(changedValue, 'entering 123 for testing content body    ');
  });

  String errorMessage = 'This is an error message generated by the application ';

  testWidgets('Testing when Error Message is sent', (tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Error Message',
  home: Scaffold(
  body: ErrorMessage(message: errorMessage),
  ),
  ),
  );

  expect(find.byIcon(Icons.warning_rounded), findsOneWidget);
  expect(find.byType(Center), findsNWidgets(3));
  expect(find.byIcon(Icons.arrow_outward_rounded), findsOneWidget);
  expect(find.byType(SelectableText), findsOneWidget);
  expect(find.text(errorMessage), findsOneWidget);
  expect(find.text('Raise Issue'), findsOneWidget);
  expect(find.text('An error occurred. $kUnexpectedRaiseIssue'), findsNothing);

  await tester.tap(find.text('Raise Issue'));
  await tester.pump();

  final dynamic filledButtonWithIconWidget = tester.widget(
  find.byWidgetPredicate(
  (Widget widget) => '${widget.runtimeType}' == '_FilledButtonWithIcon'
  )
  );
  expect(
  find.byType(filledButtonWithIconWidget.runtimeType),
  findsOneWidget
  );
  });


  testWidgets('Testing when no error message is sent', (WidgetTester tester) async {

  await tester.pumpAndSettle();

  await tester.pumpWidget(
  const MaterialApp(
  title: 'Error Message',
  home: Scaffold(
  body: ErrorMessage(message: null),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.byIcon(Icons.warning_rounded), findsOneWidget);
  expect(find.byType(Center), findsNWidgets(3));
  expect(find.byIcon(Icons.arrow_outward_rounded), findsOneWidget);
  expect(find.byType(SelectableText), findsOneWidget);
  expect(find.text('Raise Issue'), findsOneWidget);
  expect(find.text(errorMessage), findsNothing);
  expect(
  find.text('An error occurred. $kUnexpectedRaiseIssue'), findsOneWidget);
  final dynamic filledButtonWithIconWidget = tester.widget(
  find.byWidgetPredicate((Widget widget) =>
  '${widget.runtimeType}' == '_FilledButtonWithIcon'));
  expect(find.byType(filledButtonWithIconWidget.runtimeType), findsOneWidget);
  await tester.tap(find.byType(filledButtonWithIconWidget.runtimeType));
  });

  testWidgets('Testing for Form Data Widget', (WidgetTester tester) async {

  await tester.pumpAndSettle();

  await tester.pumpWidget(
  const MaterialApp(
  title: 'Form Data Field Widget',
  home: Scaffold(
  body: FormDataField(
  keyId: "1",
  initialValue: "Test Field",
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.text("Test Field"), findsOneWidget);
  });

  testWidgets('Testing Header Field', (WidgetTester tester) async {

  await tester.pumpAndSettle();

  await tester.pumpWidget(
  const MaterialApp(
  title: 'Header Field',
  home: Scaffold(
  body: Column(
  children: [
  HeaderField(
  keyId: "1",
  initialValue: "X",
  ),
  ],
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.byKey(const Key("1")), findsOneWidget);
  expect(find.text('X'), findsOneWidget);
  });

  testWidgets('Testing Intro Message', (WidgetTester tester) async {

  await tester.pumpAndSettle();

  PackageInfo.setMockInitialValues(
  appName: 'API Dash',
  packageName: 'dev.apidash.apidash',
  version: '1.0.0',
  buildNumber: '1',
  buildSignature: 'buildSignature',
  );

  await tester.pumpWidget(
  const MaterialApp(
  title: 'Intro Message',
  home: Scaffold(
  body: IntroMessage(),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.text('Welcome to API Dash ⚡️'), findsOneWidget);

  expect(find.byType(RichText), findsAtLeastNWidgets(1));
  expect(
  find.textContaining(
  "Please support this project by giving us a ",
  findRichText: true,
  ),
  findsOneWidget,
  );

  expect(find.byIcon(Icons.star), findsOneWidget);
  expect(find.text('Star on GitHub'), findsOneWidget);
  await tester.tap(find.byIcon(Icons.star));
  });



  testWidgets('Testing RequestCardMenu', (WidgetTester tester) async {
   // Start the app

  dynamic changedValue;
  await tester.pumpWidget(
  MaterialApp(
  title: 'CardMenu testing',
  theme: ThemeData.light(),
  home: Scaffold(
  body: Center(
  child: Column(
  children: [
  RequestCardMenu(
  onSelected: (value) {
  changedValue = value;
  },
  ),
  ],
  ),
  ),
  ),
  ),
  );

  expect(find.byType(PopupMenuButton<RequestItemMenuOption>), findsOneWidget);

  await tester.tap(find.byType(PopupMenuButton<RequestItemMenuOption>));
  await tester.pumpAndSettle(); // Wait for animations to complete

  await tester.tap(find.text('Delete').last);
  await tester.pumpAndSettle();

  expect(changedValue, RequestItemMenuOption.delete);

  await tester.tap(find.byType(PopupMenuButton<RequestItemMenuOption>));
  await tester.pumpAndSettle();

  await tester.tap(find.text('Duplicate').last);
  await tester.pumpAndSettle();

  expect(changedValue, RequestItemMenuOption.duplicate);
  });


  testWidgets('Testing when type/subtype is audio/mpeg', (WidgetTester tester) async {
   // Start the app

  final Uint8List bytes1 = Uint8List.fromList([20, 8]);

  await tester.pumpWidget(
  MaterialApp(
  title: 'Previewer',
  home: Scaffold(
  body: Previewer(
  type: 'audio',
  subtype: 'mpeg',
  bytes: bytes1,
  body: "",
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.byType(Uint8AudioPlayer),
  findsOneWidget,
  reason: 'Audio player should be displayed',
  );
  });

  testWidgets('Testing when type/subtype is video/H264', (WidgetTester tester) async {


  final Uint8List bytes1 = Uint8List.fromList([20, 8]);

  await tester.pumpWidget(
  MaterialApp(
  title: 'Previewer',
  home: Scaffold(
  body: Previewer(
  type: 'video',
  subtype: 'H264',
  bytes: bytes1,
  body: "",
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.text("${kMimeTypeRaiseIssueStart}video/H264$kMimeTypeRaiseIssue"),
  findsOneWidget,
  reason: 'Error message should be displayed for video/H264',
  );
  });

  testWidgets('Testing when type/subtype is model/step+xml', (WidgetTester tester) async {


  final Uint8List bytes1 = Uint8List.fromList([20, 8]);

  await tester.pumpWidget(
  MaterialApp(
  title: 'Previewer',
  home: Scaffold(
  body: Previewer(
  type: 'model',
  subtype: 'step+xml',
  bytes: bytes1,
  body: "",
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.text("${kMimeTypeRaiseIssueStart}model/step+xml$kMimeTypeRaiseIssue"),
  findsOneWidget,
  reason: 'Error message should be displayed for model/step+xml',
  );
  });

  testWidgets('Testing when type/subtype is image/jpeg', (WidgetTester tester) async {
  // Start the app

  await tester.pumpWidget(
  MaterialApp(
  title: 'Previewer',
  home: Scaffold(
  body: Previewer(
  type: 'image',
  subtype: 'jpeg',
  bytes: kBodyBytesJpeg,
  body: "",
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.byType(Image),
  findsOneWidget,
  reason: 'Image widget should be displayed for image/jpeg',
  );
  });

  testWidgets('Testing when type/subtype is image/jpeg corrupted', (WidgetTester tester) async {


  final Uint8List bytesJpegCorrupt = Uint8List.fromList([
  255, 216, 255, 225, 0, 222, 69, 120, 105, 102, 0, 0, 173, 170, 245, 235, 191, 255, 217
  ]);

  await tester.pumpWidget(
  MaterialApp(
  title: 'Previewer',
  home: Scaffold(
  body: Previewer(
  type: 'image',
  subtype: 'jpeg',
  bytes: bytesJpegCorrupt,
  body: "",
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.text(kImageError),
  findsOneWidget,
  reason: 'Error message should be displayed for corrupted image/jpeg',
  );
  });

  testWidgets('Testing when type/subtype is audio/mpeg corrupted', (WidgetTester tester) async {


  final Uint8List bytesAudioCorrupt = Uint8List.fromList(List.generate(100, (index) => index));

  await tester.pumpWidget(
  MaterialApp(
  title: 'Previewer',
  home: Scaffold(
  body: Previewer(
  type: 'audio',
  subtype: 'mpeg',
  bytes: bytesAudioCorrupt,
  body: "",
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.text(kAudioError),
  findsOneWidget,
  reason: 'Error message should be displayed for corrupted audio/mpeg',
  );
  });


  testWidgets('Testing when type/subtype is image/svg+xml corrupted', (WidgetTester tester) async {


  const rawSvg = "rwsjhdws";

  await tester.pumpWidget(
  MaterialApp(
  title: 'Previewer',
  home: Scaffold(
  body: Previewer(
  type: 'image',
  subtype: 'svg+xml',
  bytes: Uint8List.fromList([]),
  body: rawSvg,
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.text(kSvgError),
  findsOneWidget,
  reason: 'Error message should be displayed for corrupted image/svg+xml',
  );
  });

  testWidgets('Testing when type/subtype is text/csv', (WidgetTester tester) async {


  const String csvDataString =
  'Id,Name,Age\n1,John Doe,40\n2,Dbestech,41\n3,Voldermort,71\n4,Joe Biden,80\n5,Ryo Hanamura,35';

  await tester.pumpWidget(
  MaterialApp(
  home: Scaffold(
  body: Previewer(
  type: kTypeText,
  subtype: kSubTypeCsv,
  bytes: Uint8List.fromList([]),
  body: csvDataString,
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.byType(DataTable),
  findsOneWidget,
  reason: 'DataTable widget should be displayed for text/csv data',
  );
  expect(
  find.text('John Doe'),
  findsOneWidget,
  reason: 'Name "John Doe" should be found in the displayed DataTable',
  );
  expect(
  find.text('41'),
  findsOneWidget,
  reason: 'Age "41" should be found in the displayed DataTable',
  );
  });

  testWidgets('Testing Request Pane for 1st tab', (WidgetTester tester) async {


  await tester.pumpWidget(
  MaterialApp(
  title: 'Request Pane',
  theme: kThemeDataLight,
  home: Scaffold(
  body: RequestPane(
  selectedId: '1',
  codePaneVisible: true,
  children: const [Text('abc'), Text('xyz'), Text('mno')],
  onPressedCodeButton: () {},
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.byType(Center),
  findsAtLeastNWidgets(1),
  reason: 'Center widget should be displayed in the RequestPane',
  );
  expect(
  find.text('Request'),
  findsOneWidget,
  reason: 'Text "Request" should be found in the RequestPane',
  );
  expect(
  find.text('Hide Code'),
  findsOneWidget,
  reason: 'Text "Hide Code" should be found in the RequestPane',
  );
  expect(
  find.text('View Code'),
  findsNothing,
  reason: 'Text "View Code" should not be found in the RequestPane',
  );
  expect(
  find.text('URL Params'),
  findsOneWidget,
  reason: 'Text "URL Params" should be found in the RequestPane',
  );
  expect(
  find.text('Headers'),
  findsOneWidget,
  reason: 'Text "Headers" should be found in the RequestPane',
  );
  expect(
  find.text('Body'),
  findsOneWidget,
  reason: 'Text "Body" should be found in the RequestPane',
  );
  expect(
  find.text('abc'),
  findsOneWidget,
  reason: 'Text "abc" should be found in the RequestPane',
  );
  expect(
  find.text('mno'),
  findsNothing,
  reason: 'Text "mno" should not be found in the RequestPane',
  );
  expect(
  find.text('xyz'),
  findsNothing,
  reason: 'Text "xyz" should not be found in the RequestPane',
  );

  expect(
  find.byIcon(Icons.code_off_rounded),
  findsOneWidget,
  reason: 'Icon "code_off_rounded" should be found in the RequestPane',
  );
  expect(
  find.byIcon(Icons.code_rounded),
  findsNothing,
  reason: 'Icon "code_rounded" should not be found in the RequestPane',
  );
  });

  testWidgets('Testing Request Pane for 2nd tab', (WidgetTester tester) async {
   // Start the app

  await tester.pumpWidget(
  MaterialApp(
  title: 'Request Pane',
  theme: kThemeDataLight,
  home: Scaffold(
  body: RequestPane(
  selectedId: '1',
  codePaneVisible: true,
  onPressedCodeButton: () {},
  tabIndex: 1,
  children: const [Text('abc'), Text('xyz'), Text('mno')],
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.byType(Center),
  findsAtLeastNWidgets(1),
  reason: 'Center widget should be displayed in the RequestPane',
  );
  expect(
  find.text('Request'),
  findsOneWidget,
  reason: 'Text "Request" should be found in the RequestPane',
  );
  expect(
  find.text('Hide Code'),
  findsOneWidget,
  reason: 'Text "Hide Code" should be found in the RequestPane',
  );
  expect(
  find.text('View Code'),
  findsNothing,
  reason: 'Text "View Code" should not be found in the RequestPane',
  );
  expect(
  find.text('URL Params'),
  findsOneWidget,
  reason: 'Text "URL Params" should be found in the RequestPane',
  );
  expect(
  find.text('Headers'),
  findsOneWidget,
  reason: 'Text "Headers" should be found in the RequestPane',
  );
  expect(
  find.text('Body'),
  findsOneWidget,
  reason: 'Text "Body" should be found in the RequestPane',
  );
  expect(
  find.text('abc'),
  findsNothing,
  reason: 'Text "abc" should not be found in the RequestPane',
  );
  expect(
  find.text('mno'),
  findsNothing,
  reason: 'Text "mno" should not be found in the RequestPane',
  );
  expect(
  find.text('xyz'),
  findsOneWidget,
  reason: 'Text "xyz" should be found in the RequestPane',
  );

  expect(
  find.byIcon(Icons.code_off_rounded),
  findsOneWidget,
  reason: 'Icon "code_off_rounded" should be found in the RequestPane',
  );
  expect(
  find.byIcon(Icons.code_rounded),
  findsNothing,
  reason: 'Icon "code_rounded" should not be found in the RequestPane',
  );
  });

  testWidgets('Testing Request Pane for 3rd tab', (WidgetTester tester) async {
  // Start the app

  await tester.pumpWidget(
  MaterialApp(
  title: 'Request Pane',
  theme: kThemeDataLight,
  home: Scaffold(
  body: RequestPane(
  selectedId: '1',
  codePaneVisible: false,
  onPressedCodeButton: () {},
  tabIndex: 2,
  children: const [Text('abc'), Text('xyz'), Text('mno')],
  ),
  ),
  ),
  );

  await tester.pumpAndSettle(); // Wait for animations to complete

  expect(
  find.byType(Center),
  findsAtLeastNWidgets(1),
  reason: 'Center widget should be displayed in the RequestPane',
  );
  expect(
  find.text('Request'),
  findsOneWidget,
  reason: 'Text "Request" should be found in the RequestPane',
  );
  expect(
  find.text('Hide Code'),
  findsNothing,
  reason: 'Text "Hide Code" should not be found in the RequestPane',
  );
  expect(
  find.text('View Code'),
  findsOneWidget,
  reason: 'Text "View Code" should be found in the RequestPane',
  );
  expect(
  find.text('URL Params'),
  findsOneWidget,
  reason: 'Text "URL Params" should be found in the RequestPane',
  );
  expect(
  find.text('Headers'),
  findsOneWidget,
  reason: 'Text "Headers" should be found in the RequestPane',
  );
  expect(
  find.text('Body'),
  findsOneWidget,
  reason: 'Text "Body" should be found in the RequestPane',
  );
  expect(
  find.text('abc'),
  findsNothing,
  reason: 'Text "abc" should not be found in the RequestPane',
  );
  expect(
  find.text('mno'),
  findsOneWidget,
  reason: 'Text "mno" should be found in the RequestPane',
  );
  expect(
  find.text('xyz'),
  findsNothing,
  reason: 'Text "xyz" should not be found in the RequestPane',
  );

  expect(
  find.byIcon(Icons.code_off_rounded),
  findsNothing,
  reason: 'Icon "code_off_rounded" should not be found in the RequestPane',
  );
  expect(
  find.byIcon(Icons.code_rounded),
  findsOneWidget,
  reason: 'Icon "code_rounded" should be found in the RequestPane',
  );
  });

  testWidgets('Testing Not Sent Widget', (WidgetTester tester) async {
  await tester.pumpWidget(
  const MaterialApp(
  title: 'Not Sent',
  home: Scaffold(
  body: NotSentWidget(),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.byIcon(Icons.north_east_rounded), findsOneWidget);
  expect(find.text('Not Sent'), findsOneWidget);
  });

  testWidgets('Testing Response Pane Header', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Response Pane Header',
  theme: kThemeDataLight,
  home: const Scaffold(
  body: ResponsePaneHeader(
  responseStatus: 200,
  message: 'Hi',
  time: Duration(microseconds: 23),
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.byType(RichText), findsAtLeastNWidgets(1));
  expect(
  find.textContaining("Response (", findRichText: true),
  findsOneWidget,
  );
  expect(find.text('Hi'), findsOneWidget);
  expect(
  find.textContaining("200", findRichText: true),
  findsOneWidget,
  );
  expect(
  find.text(humanizeDuration(const Duration(microseconds: 23))),
  findsOneWidget,
  );
  });

  testWidgets('Testing Response Tab View', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Response Tab View',
  theme: kThemeDataLight,
  home: const Scaffold(
  body: ResponseTabView(
  selectedId: '1',
  children: [Text('first'), Text('second')],
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.text('Body'), findsOneWidget);
  expect(find.text('Headers'), findsOneWidget);

  await tester.tap(find.text('Headers'));
  await tester.pumpAndSettle();

  expect(find.text('first'), findsNothing);
  expect(find.text('second'), findsOneWidget);

  await tester.tap(find.text('Body'));
  await tester.pumpAndSettle();

  expect(find.text('first'), findsOneWidget);
  expect(find.text('second'), findsNothing);
  });

  testWidgets('Testing ResponseHeadersHeader', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Response Headers Header',
  theme: kThemeDataLight,
  home: const Scaffold(
  body: ResponseHeadersHeader(
  map: {'text': 'a', 'value': '1'},
  name: 'xyz',
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.text('xyz (2 items)'), findsOneWidget);
  expect(find.byIcon(Icons.content_copy), findsOneWidget);
  expect(find.text(kLabelCopy), findsOneWidget);

  final textButton1 = find.byType(TextButton);
  expect(textButton1, findsOneWidget);
  await tester.tap(textButton1);
  });

  testWidgets('Testing Response Headers', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Response Headers',
  theme: kThemeDataLight,
  home: const Scaffold(
  body: ResponseHeaders(
  responseHeaders: {
  "Content-Length": "4506",
  "Cache-Control": "private",
  "Content-Type": "application/json",
  },
  requestHeaders: {
  'Host': 'developer',
  'user-agent':
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:50.0) Gecko/20100101 Firefox/50.0',
  'accept': 'text/html',
  },
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.byType(ListView), findsOneWidget);
  expect(find.text('Response Headers (3 items)'), findsOneWidget);
  expect(find.text("Content-Length"), findsOneWidget);
  expect(find.text("4506"), findsOneWidget);

  expect(find.text('Request Headers (3 items)'), findsOneWidget);
  expect(find.text("Accept"), findsOneWidget);
  expect(find.text("User-Agent"), findsOneWidget);
  expect(find.text("developer"), findsOneWidget);

  expect(find.byIcon(Icons.content_copy), findsNWidgets(2));
  expect(find.text(kLabelCopy), findsNWidgets(2));
  });

  testWidgets('Testing Response Body, no data sent', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Response Body',
  theme: kThemeDataLight,
  home: const Scaffold(body: ResponseBody()),
  ),
  );

  await tester.pumpAndSettle();

  expect(
  find.text(
  'Error: Response data does not exist. $kUnexpectedRaiseIssue'),
  findsOneWidget,
  );
  });

  int statusCode = 200;
  Map<String, String> responseHeaders = {
  "content-length": "16",
  "x-cloud-trace-context": "dad62aaf7f640300bbf629f4ae2f2f63",
  "content-type": "application/json",
  "date": "Sun, 23 Apr 2023 23:46:31 GMT",
  "server": "Google Frontend"
  };
  Map<String, String> requestHeaders = {
  "content-length": "18",
  "content-type": "application/json; charset=utf-8"
  };
  String responseBody = '{"data":"world"}';
  Uint8List bodyBytes = Uint8List.fromList([
  123,
  34,
  100,
  97,
  116,
  97,
  34,
  58,
  34,
  119,
  111,
  114,
  108,
  100,
  34,
  125
  ]);
  String formattedBody = '''{
  "data": "world"
}''';
  Duration time = const Duration(milliseconds: 516);

  RequestModel requestModel = const RequestModel(
  id: '1',
  method: HTTPVerb.post,
  url: 'api.foss42.com/case/lower',
  name: 'foss42 api',
  requestHeaders: [
  NameValueModel(name: 'content-length', value: '18'),
  NameValueModel(
  name: 'content-type', value: 'application/json; charset=utf-8')
  ],
  requestBodyContentType: ContentType.json,
  requestBody: '''{
"text":"WORLD"
}''',
  responseStatus: 200,
  );

  testWidgets('Testing Response Body, no body', (WidgetTester tester) async {
  ResponseModel responseModelNoBody = ResponseModel(
  statusCode: statusCode,
  headers: responseHeaders,
  requestHeaders: requestHeaders,
  formattedBody: formattedBody,
  bodyBytes: bodyBytes,
  time: time,
  );
  var requestModelNoResponseBody = requestModel.copyWith(
  responseModel: responseModelNoBody,
  );
  await tester.pumpWidget(
  MaterialApp(
  title: 'Response Body',
  theme: kThemeDataLight,
  home: Scaffold(
  body: ResponseBody(selectedRequestModel: requestModelNoResponseBody),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(
  find.text('Response body is missing (null). $kUnexpectedRaiseIssue'),
  findsOneWidget,
  );
  });

  testWidgets('Testing Response Body, no mediaType', (WidgetTester tester) async {
  ResponseModel responseModelNoHeaders = ResponseModel(
  statusCode: statusCode,
  body: responseBody,
  requestHeaders: requestHeaders,
  formattedBody: formattedBody,
  bodyBytes: bodyBytes,
  time: time,
  );
  var requestModelNoResponseHeaders = requestModel.copyWith(
  responseModel: responseModelNoHeaders,
  );

  await tester.pumpWidget(
  MaterialApp(
  title: 'Response Body',
  theme: kThemeDataLight,
  home: Scaffold(
  body: ResponseBody(selectedRequestModel: requestModelNoResponseHeaders),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(
  find.text('Unknown Response Content-Type - ${responseModelNoHeaders.contentType}. $kUnexpectedRaiseIssue'),
  findsOneWidget,
  );
  });

  testWidgets('Testing Response Body for No body view', (WidgetTester tester) async {
  ResponseModel responseModelOctet = ResponseModel(
  statusCode: statusCode,
  body: responseBody,
  headers: const {"content-type": "application/octet-stream"},
  requestHeaders: requestHeaders,
  formattedBody: formattedBody,
  bodyBytes: bodyBytes,
  time: time,
  );
  var requestModelNoResponseHeaders = requestModel.copyWith(
  responseModel: responseModelOctet,
  );

  await tester.pumpWidget(
  MaterialApp(
  title: 'Response Body',
  theme: kThemeDataLight,
  home: Scaffold(
  body: ResponseBody(selectedRequestModel: requestModelNoResponseHeaders),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(
  find.text("${kMimeTypeRaiseIssueStart}application/octet-stream$kMimeTypeRaiseIssue"),
  findsOneWidget,
  );
  expect(find.byIcon(Icons.download), findsOneWidget);
  });

  testWidgets('Testing Response Body for no formatted body', (WidgetTester tester) async {
  ResponseModel responseModel = ResponseModel(
  statusCode: statusCode,
  body: responseBody,
  headers: responseHeaders,
  requestHeaders: requestHeaders,
  bodyBytes: bodyBytes,
  time: time,
  );
  var requestModelNoResponseHeaders = requestModel.copyWith(
  responseModel: responseModel,
  );

  await tester.pumpWidget(
  MaterialApp(
  title: 'Response Body',
  theme: kThemeDataLight,
  home: Scaffold(
  body: ResponseBody(selectedRequestModel: requestModelNoResponseHeaders),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.text("Raw"), findsOneWidget);
  });

  testWidgets('Testing Body Success for ResponseBodyView.none', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Body Success',
  theme: kThemeDataDark,
  home: Scaffold(
  body: BodySuccess(
  body: 'Hello from API Dash',
  mediaType: MediaType("application", "json"),
  options: const [
  ResponseBodyView.none,
  ResponseBodyView.code,
  ResponseBodyView.raw,
  ],
  bytes: Uint8List.fromList([20, 8]),
  ),
  ),
  ),
  );
  await tester.pumpAndSettle();

  expect(
  find.text("${kMimeTypeRawRaiseIssueStart}application/json$kMimeTypeRaiseIssue"),
  findsOneWidget,
  );
  expect(find.byIcon(Icons.download), findsOneWidget);
  });

  testWidgets('Testing Body Success for ResponseBodyView.raw', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Body Success',
  theme: kThemeDataDark,
  home: Scaffold(
  body: BodySuccess(
  body: 'Hello from API Dash',
  mediaType: MediaType("application", "json"),
  options: const [
  ResponseBodyView.raw,
  ],
  bytes: Uint8List.fromList([20, 8]),
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();
  expect(find.text('Hello from API Dash'), findsOneWidget);
  expect(find.byIcon(Icons.download), findsOneWidget);
  });

  testWidgets('Testing Body Success for ResponseBodyView.code', (WidgetTester tester) async {
  String code = r'''import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://api.foss42.com/country/codes');

  final response = await http.get(uri);

  if (response.statusCode == 200) {
    print('Status Code: ${response.statusCode}');
    print('Result: ${response.body}');
  }
  else{
    print('Error Status Code: ${response.statusCode}');
  }
}
''';
  await tester.pumpWidget(
  MaterialApp(
  title: 'Body Success',
  theme: kThemeDataLight,
  home: Scaffold(
  body: BodySuccess(
  body: 'Hello',
  formattedBody: code,
  mediaType: MediaType("application", "json"),
  options: const [
  ResponseBodyView.code,
  ],
  bytes: Uint8List.fromList([20, 8]),
  highlightLanguage: 'dart',
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();

  expect(find.text('Copy'), findsOneWidget);
  expect(find.textContaining('Error Status Code', findRichText: true),
  findsOneWidget);
  });

  testWidgets('Testing Body Success for ResponseBodyView.preview', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Body Success',
  theme: kThemeDataDark,
  home: Scaffold(
  body: BodySuccess(
  body: 'Hello from API Dash',
  mediaType: MediaType("image", "jpeg"),
  options: const [
  ResponseBodyView.preview,
  ],
  bytes: kBodyBytesJpeg,
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();
  expect(find.byType(Image), findsOneWidget);
  });

  testWidgets(
  'Testing Body Success tap segment. formattedBody is always shown in Raw',
  (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Body Success',
  theme: kThemeDataLight,
  home: Scaffold(
  body: BodySuccess(
  body: 'Raw Hello from API Dash',
  formattedBody: 'Formatted Hello from API Dash',
  mediaType: MediaType("application", "json"),
  options: const [
  ResponseBodyView.code,
  ResponseBodyView.raw,
  ],
  bytes: kBodyBytesJpeg,
  highlightLanguage: 'json',
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();
  expect(find.text('Formatted Hello from API Dash'), findsOneWidget);
  expect(find.text('Raw Hello from API Dash'), findsNothing);

  await tester.tap(find.text('Raw'));
  await tester.pumpAndSettle();
  expect(find.text('Formatted Hello from API Dash'), findsOneWidget);
  expect(find.text('Raw Hello from API Dash'), findsNothing);
  },
  );

  testWidgets(
  'Testing Body Success tap segment for formattedBody null',
  (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Body Success',
  theme: kThemeDataLight,
  home: Scaffold(
  body: BodySuccess(
  body: 'Raw Hello from API Dash',
  formattedBody: null,
  mediaType: MediaType("text", "csv"),
  options: const [
  ResponseBodyView.code,
  ResponseBodyView.raw,
  ],
  bytes: kBodyBytesJpeg,
  highlightLanguage: 'txt',
  ),
  ),
  ),
  );

  await tester.pumpAndSettle();
  expect(find.text('Raw Hello from API Dash'), findsOneWidget);

  await tester.tap(find.text('Raw'));
  await tester.pumpAndSettle();
  expect(find.text('Raw Hello from API Dash'), findsOneWidget);
  },
  );

  testWidgets('Testing for Dashboard Splitview', (WidgetTester tester) async {
  await tester.pumpWidget(
  const MaterialApp(
  title: 'Dashboard Splitview',
  home: Scaffold(
  body: DashboardSplitView(
  sidebarWidget: Column(children: [Text("Hello")]),
  mainWidget: Column(children: [Text("World")]),
  ),
  ),
  ),
  );

  expect(find.text("World"), findsOneWidget);
  expect(find.text("Hello"), findsOneWidget);
  expect(find.byType(MultiSplitViewTheme), findsOneWidget);
  });

  testWidgets('Testing for Equal SplitView', (WidgetTester tester) async {
  await tester.pumpWidget(
  const MaterialApp(
  title: 'Equal SplitView',
  home: Scaffold(
  body: EqualSplitView(
  leftWidget: Column(children: [Text("Hello equal")]),
  rightWidget: Column(children: [Text("World equal")]),
  ),
  ),
  ),
  );

  expect(find.text("World equal"), findsOneWidget);
  expect(find.text("Hello equal"), findsOneWidget);
  expect(find.byType(MultiSplitViewTheme), findsOneWidget);
  });

  Map<String, String> mapInput = {
  "day1": "Sunday",
  "day2": "Monday",
  "day3": "Tuesday",
  "day4": "Wednesday",
  "day5": "thursday"
  };
  List<String> colNames = ["dayNo.", "day"];

  testWidgets('Testing tables', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'tables',
  home: Scaffold(
  body: MapTable(
  colNames: colNames,
  map: mapInput,
  ),
  ),
  ),
  );

  expect(find.byType(Table), findsOneWidget);
  expect(find.text('Wednesday'), findsOneWidget);
  expect(find.text('day2'), findsOneWidget);
  expect(find.text('dayNo.'), findsOneWidget);
  });

  testWidgets('Testing tables with firstColumnHeaderCase is true',
  (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'tables',
  home: Scaffold(
  body: MapTable(
  colNames: colNames,
  map: mapInput,
  firstColumnHeaderCase: true,
  ),
  ),
  ),
  );

  expect(find.byType(Table), findsOneWidget);
  expect(find.text('thursday'), findsOneWidget);
  expect(find.text('Day2'), findsOneWidget);
  expect(find.text('day2'), findsNothing);
  expect(find.text('dayNo.'), findsOneWidget);
  });

  testWidgets('Testing URL Field', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'URL Field',
  theme: ThemeData.dark(), // Replace with your dark theme
  home: const Scaffold(
  body: Column(children: [URLField(selectedId: '2')]),
  ),
  ),
  );

  expect(find.byType(TextFormField), findsOneWidget);
  expect(find.byKey(const Key("url-2")), findsOneWidget);
  expect(find.byKey(const Key("2")), findsNothing);
  expect(find.text(kHintTextUrlCard), findsOneWidget);
  var txtForm = find.byKey(const Key("url-2"));
  await tester.enterText(txtForm, 'entering 123');
  await tester.pump();
  expect(find.text('entering 123'), findsOneWidget);
  });

  testWidgets('Testing Cell Field', (WidgetTester tester) async {
  await tester.pumpWidget(
  MaterialApp(
  title: 'Cell Field',
  theme: ThemeData.light(), // Replace with your light theme
  home: const Scaffold(
  body: Column(
  children: [
  CellField(
  keyId: "4",
  hintText: "Passing some hint text",
  initialValue: '2',
  ),
  ],
  ),
  ),
  ),
  );

  expect(find.byType(TextFormField), findsOneWidget);
  expect(find.byKey(const Key("4")), findsOneWidget);
  expect(find.text("2"), findsOneWidget);

  var txtField = find.byKey(const Key("4"));
  await tester.enterText(txtField, '');
  await tester.pumpAndSettle();

  expect(find.text("Passing some hint text"), findsOneWidget);
  await tester.enterText(txtField, 'entering 123 for cell field');
  await tester.pumpAndSettle();
  expect(find.text('entering 123 for cell field'), findsOneWidget);
  });

  testWidgets('Testing when method is GET', (WidgetTester tester) async {
  var methodGet = HTTPVerb.get;
  await tester.pumpWidget(
  MaterialApp(
  title: 'Texts',
  theme: ThemeData(brightness: Brightness.light),
  home: Scaffold(
  body: MethodBox(method: methodGet),
  ),
  ),
  );

  expect(find.byType(SizedBox), findsOneWidget);
  expect(find.text('GET'), findsOneWidget);
  expect(find.text('DEL'), findsNothing);
  final getTextWithColor = find.byWidgetPredicate((widget) =>
  widget is Text && widget.style!.color == kColorHttpMethodGet);
  expect(getTextWithColor, findsOneWidget);
  });

  testWidgets('Testing when method is DELETE', (WidgetTester tester) async {
  var methodDel = HTTPVerb.delete;
  await tester.pumpWidget(
  MaterialApp(
  title: 'Texts',
  theme: ThemeData(brightness: Brightness.dark),
  home: Scaffold(
  body: MethodBox(method: methodDel),
  ),
  ),
  );

  expect(find.byType(SizedBox), findsOneWidget);
  expect(find.text('DEL'), findsOneWidget);
  expect(find.text('GET'), findsNothing);
  Color colDelDarkMode = getDarkModeColor(kColorHttpMethodDelete);
  final delTextWithColor = find.byWidgetPredicate(
  (widget) => widget is Text && widget.style!.color == colDelDarkMode);
  expect(delTextWithColor, findsOneWidget);
  });

  testWidgets('Testing for Window caption', (WidgetTester tester) async {
  await tester.pumpWidget(
  const MaterialApp(
  title: 'Window caption',
  home: Scaffold(
  body: WindowCaption(),
  ),
  ),
  );

  final wd = find.byType(GestureDetector);
  expect(wd, findsAny);
  });
}


