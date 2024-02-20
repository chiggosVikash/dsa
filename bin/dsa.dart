import 'dart:collection';

void main(List<String> arguments) {
  final List<int> nums = [9, 6, 4, 2, 3, 5, 7, 0, 1];
  print(missingNumber(nums));
}

bool isPowerOfTwo(int n) {
  if (n == 0) return false;

  return (n & (n - 1)) == 0;
}

int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int i = 0;
  for (int j = 1; j < nums.length; j++) {
    if (nums[j] != nums[i]) {
      i++;
      nums[i] = nums[j];
    }
  }

  return i + 1;
}

int missingNumber(List<int> nums) {
  int n = nums.length;
  int sum = (n * (n + 1)) ~/ 2;

  for (int i = 0; i < n; i++) {
    sum -= nums[i];
  }
  return sum;
}


