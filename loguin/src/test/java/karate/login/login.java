package karate.login;

import com.intuit.karate.junit5.Karate;

public class login {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/login/login.feature").relativeTo(getClass());
    }
}
