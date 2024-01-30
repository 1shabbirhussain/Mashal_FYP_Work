import 'package:get/get.dart';
import 'package:login_page/models/task_model.dart';
import 'package:login_page/resources/api_prover.dart';

class TaskController extends GetxController {
  static String endPoint = "End Point Key";

  Api api = Api(apiKey: endPoint,  '');
  RxBool isLoading = true.obs;
  var taskList = <TaskModel>[].obs;

  @override
  void onInit() {
    fetchAuctions();
    super.onInit();
  }

  void fetchAuctions() async {
    try {
      isLoading(true);
      var tasks = await api.fetchTaskfromAPI();
      taskList.assignAll(tasks ?? []); // Assuming tasks is the list directly
      print("Auction List Length: ${taskList.length}");
    } finally {
      isLoading(false);
    }
  }
}
