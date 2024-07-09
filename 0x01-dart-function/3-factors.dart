int fact(int f) {
  if (f <= 0) {
    return 1; // Factorial of 0 or negative number is 1
  } else if (f == 1) {
    return 1; // Base case: Factorial of 1 is 1
  } else {
    return f * fact(f - 1); // Recursive call: f! = f * (f-1)!
  }
}
