import 'package:get/get.dart';
import 'package:login_page/models/resource_model.dart';
import 'package:login_page/resources/api_prover.dart';

class ResourceController extends GetxController {
  static String endPoint = "End Point Key";

  Api api = Api(apiKey: endPoint);
  RxBool isLoading = true.obs;
  var resourceList = <ResourceModel>[].obs;

  @override
  void onInit() {
    fetchAuctions();
    super.onInit();
  }

  void fetchAuctions() async {
    try {
      isLoading(true);
      var resources = await api.fetchResourcefromAPI();
      resourceList.assignAll(resources ?? []); // Assuming resources is the list directly
      print("Auction List Length: ${resourceList.length}");
    } finally {
      isLoading(false);
    }
  }
}
