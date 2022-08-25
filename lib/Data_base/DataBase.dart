import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/Data_base/Task.dart';

class Database {
  static CollectionReference<Task> getTaskcollection() {
    return FirebaseFirestore.instance
        .collection(Task.collectionName)
        .withConverter<Task>(fromFirestore: (snapshot, options) {
      return Task.fromFireStore(snapshot.data()!);
    }, toFirestore: (task, options) {
      return task.tofirestore();
    });
  }

  static void insertTask(Task task) {
    var taskcollection = getTaskcollection();
    var taskdoc = taskcollection.doc();
    task.id = taskdoc.id;
    taskdoc.set(task);
  }
}
