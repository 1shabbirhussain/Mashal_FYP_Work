import 'package:get/get.dart';
import 'package:login_page/models/performance_model.dart';
import 'package:login_page/resources/api_prover.dart';

class PerformanceController extends GetxController {
  static String endPoint = "End Point Key";

  Api api = Api(apiKey: endPoint);
  RxBool isLoading = true.obs;
  var performanceList = <PerformanceModel>[].obs;

  @override
  void onInit() {
    fetchAuctions();
    super.onInit();
  }

  void fetchAuctions() async {
    try {
      isLoading(true);
      var performances = await api.fetchPerformancefromAPI();
      performanceList.assignAll(performances ?? []); // Assuming performances is the list directly
      print("Auction List Length: ${performanceList.length}");
    } finally {
      isLoading(false);
    }
  }
}
