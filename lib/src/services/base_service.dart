
import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class BaseService{
    Future<CollectionBox<Map<dynamic, dynamic>>> getBox(String boxName) async {
    Directory directory = await getApplicationDocumentsDirectory(); //<-----
    final collection = await BoxCollection.open(
      'app',
      {boxName},
      path: directory.path,
    );
     return await collection.openBox<Map>(boxName);
    
  }
}
