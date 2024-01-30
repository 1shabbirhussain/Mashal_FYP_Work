import 'package:get/get.dart';
// import 'package:login_page/models/abc.dart';
import 'package:login_page/models/leave_model.dart';
import 'package:login_page/resources/api_prover.dart';

class LeaveController extends GetxController {

  static String endPoint = "/leave";

  Api api = Api(apiKey: endPoint,  '');
  RxBool isLoading = true.obs;
  // var leaveList = <ProductPostModel>[].obs;
  var leaveList = <LeaveModel>[].obs;

  @override
  void onInit() {
    
    print("INIT STATEEEEEEEEEEEEEEEEEEEEEEEEEE");
    fetchAuctions();
    super.onInit();
  }

  void fetchAuctions() async {
    try {
      isLoading(true);
      var leaves = await api.fetchLeavesfromAPI();
      print("---------------------------------------Leave--------------------");
      leaveList.assignAll(leaves ?? []); // Assuming leaves is the list directly
      print("Leave List Length: ${leaveList.length}");
      //debug line code--------------------
      for(int i =1 ;i < leaveList.length; i++){
        print(leaves[i].name);
      }
    } finally {
      isLoading(false);
    }
  }
}
