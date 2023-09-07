import kr.co.teaspoon.dto.Sample;
import org.junit.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LombokTest2 {
    private static final Logger log = LoggerFactory.getLogger("LombokTest2.class");

    //전체 클래스 시작 전에 출력됨 1
    @BeforeClass
    public static void testStart(){
        System.out.println("전체 테스트 시작");
    }

    // 전체 클래스 종료 후에 출력됨 8
    @AfterClass
    public static void testEnd(){
        System.out.println("전체 테스트 종료");
    }

    // 단위별 테스트 하기 전 출력됨 2 5
    @Before
    public void junitStart(){
        System.out.println("junit 테스트 시작");
    }

    // 단위별 테스트 테스트 한 후 출력됨 4 7
    @After
    public void junitEnd(){
        System.out.println("junit 테스트 종료");
    }


    //3
    @Test
    public void testLombok(){
        Sample dto = new Sample();
        dto.setNo(1);
        dto.setName("구예진");
        System.out.println(dto.toString());
        log.info(dto.toString());
    }

    //6
    @Test
    public void testLombok2(){
        Sample dto = new Sample();
        dto.setNo(2);
        dto.setName("구예진22222");
        System.out.println(dto.toString());
        log.info(dto.toString());
    }



}
