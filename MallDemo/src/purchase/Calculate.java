package purchase;

public class Calculate {

	public static String calculate(String x,String y) {
		double x1 = Double.parseDouble(x);
		double y1 = Double.parseDouble(y);
		double sum = x1*y1;
		String sum1 = String.valueOf(sum);
		return sum1;
	}
}
