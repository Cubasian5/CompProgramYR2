class Stopwatch {
  int savedTime; 
  int totalTime; 
  Stopwatch(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  void start() {
    savedTime = millis();
  }
  boolean isFinished() { 
    int passedTime = millis()- savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}
