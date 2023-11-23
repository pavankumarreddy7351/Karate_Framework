package WebServices_Validation;

import static org.junit.jupiter.api.Assertions.assertEquals;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate.Test;

public class ExampleTest {
	@Test
	void testParallel() {
		Results result = Runner.path("classpath:./src/test/java/WebServices_Validation").parallel(5);
		assertEquals(0, result.getFailCount(), result.getErrorMessages());
	}

}
