import 'package:get/get.dart';
import 'package:login_page/models/leave_model.dart';
import 'package:login_page/resources/api_prover.dart';

class LeaveController extends GetxController {
  static String endPoint = "End Point Key";

  Api api = Api(apiKey: endPoint);
  RxBool isLoading = true.obs;
  var leaveList = <LeaveModel>[].obs;

  @override
  void onInit() {
    fetchAuctions();
    super.onInit();
  }

  void fetchAuctions() async {
    try {
      isLoading(true);
      var leaves = await api.fetchLeavesfromAPI();
      leaveList.assignAll(leaves ?? []); // Assuming leaves is the list directly
      print("Auction List Length: ${leaveList.length}");
    } finally {
      isLoading(false);
    }
  }
}
