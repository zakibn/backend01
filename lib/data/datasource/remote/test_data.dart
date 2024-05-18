import 'package:backend01/core/class/crud.dart';
import 'package:backend01/linkapi.dart';

class TestData {
  
  Crud crud ; 

  TestData(this.crud) ; 

  getData() async {
    var response = await crud.postData(AppLink.test, {});
    response.fold((l) => l, (r) => r) ; 
  }


}