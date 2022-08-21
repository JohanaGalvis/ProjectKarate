package karate.request;

import com.intuit.karate.junit5.Karate;

public class getUserRuner {
    @Karate.Test
    Karate testSample(){ return Karate.run("classpath:karate/request/getUser.feature").relativeTo(getClass());
    }
}
