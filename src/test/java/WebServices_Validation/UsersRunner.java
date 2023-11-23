 package WebServices_Validation;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
//    @Karate.Test
//    Karate testUsers() {
//        return Karate.run("Get_Background_Path","Get_HeaderImplementation","Get_Method.feature").relativeTo(getClass());
//    }    
					//this method only one class
	@Karate.Test
	public Karate runTestUsingClassPath() {
		return Karate.run("classpath:WebServices_Validation/readExternalFile.feature");
		
	}
				// this method execute all methods in class
	@Karate.Test
	public Karate runTestUsingClassPath2() {
		return Karate.run("classpath:WebServices_Validation");
		
	}

}
