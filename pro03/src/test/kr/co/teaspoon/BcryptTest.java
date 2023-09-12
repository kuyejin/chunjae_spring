package kr.co.teaspoon;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.inject.Inject;
import java.util.logging.Logger;

public class BcryptTest {
    public static void main(String[] args) {
        String pw="1234";
        BCryptPasswordEncoder pwEncoder = new BCryptPasswordEncoder();
        System.out.println(pwEncoder.encode(pw));
    }

}
