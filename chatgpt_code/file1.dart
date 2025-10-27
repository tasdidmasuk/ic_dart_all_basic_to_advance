void main() {
  // Student Data
  String name = "Masuk Ahmed";
  int math = 85;
  int english = 70;
  int physics = 92;
  int chemistry = 78;
  int ict = 88;
  int attendance = 85; // in percentage
  bool tookExtraCourse = true;
  bool wasDisciplined = true;

  print("===== Student Performance Report =====");
  print("Name: $name");
  print("--------------------------------------");

  // Total and Average Calculation
  int total = math + english + physics + chemistry + ict;
  double average = total / 5;

  print("Total Marks: $total");
  print("Average: ${average.toStringAsFixed(2)}");

  // Check performance with nested if-else
  if (average >= 90) {
    print("Grade: A+");
    print("Excellent! You are a top performer 🌟");

    if (attendance > 90 && wasDisciplined) {
      print("Bonus: Eligible for scholarship 🎓");
    } else if (attendance < 70) {
      print("Warning: Low attendance may affect scholarship eligibility.");
    }

  } else if (average >= 80 && average < 90) {
    print("Grade: A");
    print("Great job! Keep up the good work 💪");

    if (attendance >= 80 && tookExtraCourse) {
      print("Bonus: You are eligible for an excellence certificate 🏅");
    } else if (!tookExtraCourse) {
      print("Suggestion: Try taking extra skill courses to improve further.");
    }

  } else if (average >= 70 && average < 80) {
    print("Grade: B");
    print("Good effort, but there’s room for improvement 📘");

    if (attendance < 60) {
      print("Warning: Poor attendance might lower your final grade.");
    } else if (wasDisciplined == false) {
      print("Note: Discipline issues noticed. Please improve behavior.");
    }

  } else if (average >= 60 && average < 70) {
    print("Grade: C");
    print("You passed, but need to focus more on your studies 📚");

    if (tookExtraCourse) {
      print("Bonus: Extra course improved your standing slightly.");
    } else {
      print("Suggestion: Join a study group for better learning.");
    }

  } else if (average >= 50 && average < 60) {
    print("Grade: D");
    print("You are barely passing. Urgent improvement needed ⚠️");

    if (attendance < 50) {
      print("Critical Warning: You may be disqualified due to low attendance!");
    }
    if (!tookExtraCourse) {
      print("Advice: Take an extra course or seek tutoring help.");
    }

  } else {
    print("Grade: F ❌");
    print("Sorry, you have failed this semester.");

    if (attendance < 60) {
      print("Reason: Very low attendance and weak performance.");
    }
    if (!tookExtraCourse) {
      print("Recommendation: Retake the course and focus on weak subjects.");
    }
  }

  // Final overall message
  print("--------------------------------------");
  if (average >= 80 && wasDisciplined && attendance >= 75) {
    print("Overall Feedback: Excellent Student ✅");
  } else if (average >= 60 && average < 80) {
    print("Overall Feedback: Average Performer ⚙️");
  } else {
    print("Overall Feedback: Needs Major Improvement 🚫");
  }

  print("======================================");
}
