import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _auth = FirebaseAuth.instance;

class DatabaseServices {
  DatabaseServices({this.uid});

  final String uid;

  final CollectionReference userCollection =
      Firestore.instance.collection('userData');

  /// Update/Set the User data into the database
  Future<void> updateUserData(
      String name, String email, String phoneNumber, String address) async {
    return await userCollection.document(uid).setData({
      'Name': name,
      'Email': email,
      'Phone Number': phoneNumber,
      'Address': address,
    });
  }

  /// Provide Teacher Review
  Future<void> teacherReview(String rating, String comment) async {
    return await userCollection.document(uid).setData({
      'rating': rating,
      'comment': comment,
    });
  }

  ///Update User Profile Image
  Future<void> updateProfilePicture(String imageURL) async {
    return await userCollection.document(uid).updateData({
      'imageURl': imageURL,
    });
  }

  ///Update Teacher Degree Image
  Future<void> uploadDegree(String degree) async {
    return await userCollection.document(uid).updateData({
      'degreeImage': degree,
    });
  }

  ///Update Teacher Qualification Level
  Future<void> qualificationLevel(
      String qualification, String teacherIntro) async {
    return await userCollection.document(uid).updateData({
      'qualification': qualification,
      'intro': teacherIntro,
    });
  }

  ///Update Teacher Education
  Future<void> education(String education) async {
    return await userCollection.document(uid).updateData({
      'education': education,
    });
  }

  /// Update Teacher Subjects
  Future<void> updateTeacherSubjects(
      String subject1, String subject2, String subject3) async {
    return await userCollection.document(uid).updateData({
      'subject1': subject1,
      'subject2': subject2,
      'subject3': subject3,
    });
  }

  Future<void> addCustomRequest(String message, String students,
      String studentLevel, String subject) async {
    return await userCollection.document(uid).updateData(
      {
        'message': message,
        'students': students,
        'studentLevel': studentLevel,
        'subject': subject,
      },
    );
  }

  /// Update Teacher Subjects
  Future<void> updateTeacherProfile(
      String subject1, String subject2, String subject3) async {
    return await userCollection.document(uid).updateData({
      '$subject1': subject1,
      '$subject2': subject2,
      '$subject3': subject3,
    });
  }

  /// Delete Teacher Subjects
  Future<void> deleteTeacherProfile(
      String subject1, String subject2, String subject3) async {
    return await userCollection.document(uid).updateData(
      {
        '$subject1'.toLowerCase(): '',
        '$subject2'.toLowerCase(): '',
        '$subject3'.toLowerCase(): '',
      },
    );
  }

  Future<void> previousSubjects(
      String subject1, String subject2, String subject3) async {
    return await userCollection.document(uid).updateData({
      'previous1': subject1,
      'previous2': subject2,
      'previous3': subject3,
    });
  }

  /// Get User's Location Longitude and Latitude
  Future<void> getLocation(double longitude, double latitude) async {
    return await userCollection.document(uid).updateData({
      'longitude': longitude,
      'latitude': latitude,
    });
  }

  Future setCredit(int credit) async {
    return await userCollection.document(uid).updateData({
      'credit': credit,
    });
  }

  Future settRating(String rating) async {
    return await userCollection.document(uid).updateData({
      'credit': rating,
    });
  }

  /// Get User ID
  Future getUserID() async {
    final FirebaseUser user = await _auth.currentUser();
    return user.uid;
  }

  /// Send Email Verification
  Future<void> sendEmailVerification() async {
    var user = await _auth.currentUser();
    user.sendEmailVerification();
  }

  /// sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
