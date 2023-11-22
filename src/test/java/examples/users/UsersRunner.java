 package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("/Karate_FrameWork/src/test/java/WebServices_Methods/Get_Method.feature").relativeTo(getClass());
    }    

}
