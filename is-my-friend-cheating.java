import java.util.List;
import java.util.ArrayList;

public class RemovedNumbers {

  public static List<long[]> removNb(long n) {
    List<long[]> result = new ArrayList<long[]>();
    long sequence_sum = n * (n + 1) / 2;
    for (long x = 1; x <= n; x++) {
      long y = (sequence_sum - x) / (x + 1);
      if (y <= n && x * y == sequence_sum - x - y) {
        result.add(new long[] {x, y});
      }
    }
    return result;
  }

}
