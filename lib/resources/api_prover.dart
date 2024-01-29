

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_page/models/leave_model.dart';
import 'package:login_page/models/performance_model.dart';
import 'package:login_page/models/resource_model.dart';
import 'package:login_page/models/task_model.dart';

class Api {
  final String apiKey;
  static const baseUrl = "http://api.themoviedb.org/3/movie/popular?api_key=";
  // static const _apiKey = '802b2c4b88ea1183e50e6b285a27696e';

  Api({required this.apiKey});

// -----------------------------Get Leaves----------------------------------
  Future<List<LeaveModel>> fetchLeavesfromAPI() async {
    try {
      final url = await Uri.parse("$baseUrl$apiKey");
      var response = await http.get(url);

      if (response.statusCode == 200) {
        print("response is 200");
        // If the call to the server was successful, parse the JSON
        List<dynamic> data = json.decode(response.body);
        List<LeaveModel> leaves =
            data.map((json) => LeaveModel.fromJson(json)).toList();
        return leaves;
      } else {
        // If that call was not successful, throw an error.
        throw Exception('Failed to load leaves');
      }
    } catch (error) {
      print(error);
      throw Exception('Error fetching leaves: $error');
    }
  }

  //---------------------------Get Performance---------------------------------
  Future<List<PerformanceModel>> fetchPerformancefromAPI() async {
    try {
      final url = await Uri.parse("$baseUrl$apiKey");
      var response = await http.get(url);

      if (response.statusCode == 200) {
        print("response is 200");
        // If the call to the server was successful, parse the JSON
        List<dynamic> data = json.decode(response.body);
        List<PerformanceModel> performances =
            data.map((json) => PerformanceModel.fromJson(json)).toList();
        return performances;
      } else {
        // If that call was not successful, throw an error.
        throw Exception('Failed to load performances');
      }
    } catch (error) {
      print(error);
      throw Exception('Error fetching performances: $error');
    }
  }

  //---------------------------Get Performance---------------------------------
  Future<List<TaskModel>> fetchTaskfromAPI() async {
    try {
      final url = await Uri.parse("$baseUrl$apiKey");
      var response = await http.get(url);

      if (response.statusCode == 200) {
        print("response is 200");
        // If the call to the server was successful, parse the JSON
        List<dynamic> data = json.decode(response.body);
        List<TaskModel> tasks =
            data.map((json) => TaskModel.fromJson(json)).toList();
        return tasks;
      } else {
        // If that call was not successful, throw an error.
        throw Exception('Failed to load tasks');
      }
    } catch (error) {
      print(error);
      throw Exception('Error fetching tasks: $error');
    }
  }

  //---------------------------Get Performance---------------------------------
  Future<List<ResourceModel>> fetchResourcefromAPI() async {
    try {
      final url = await Uri.parse("$baseUrl$apiKey");
      var response = await http.get(url);

      if (response.statusCode == 200) {
        print("response is 200");
        // If the call to the server was successful, parse the JSON
        List<dynamic> data = json.decode(response.body);
        List<ResourceModel> resources =
            data.map((json) => ResourceModel.fromJson(json)).toList();
        return resources;
      } else {
        // If that call was not successful, throw an error.
        throw Exception('Failed to load resources');
      }
    } catch (error) {
      print(error);
      throw Exception('Error fetching resources: $error');
    }
  }
}

