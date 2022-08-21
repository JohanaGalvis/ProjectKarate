package karate.request;

import com.intuit.karate.junit5.Karate;

public class createPostRuner {
    @Karate.Test
    Karate testSample(){ return Karate.run("classpath:karate/request/createPosts.feature").relativeTo(getClass());
    }
}
