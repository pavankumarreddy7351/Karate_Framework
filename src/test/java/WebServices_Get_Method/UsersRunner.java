 package WebServices_Get_Method;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("Get_Background_Path","Get_HeaderImplementation","Get_Method.feature").relativeTo(getClass());
    }    

}
