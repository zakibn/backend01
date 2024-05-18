import 'package:backend01/core/class/statusrequest.dart';
import 'package:backend01/core/functions/handingdatacontroller.dart';
import 'package:backend01/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}