package kr.co.teaspoon.test;

import kr.co.teaspoon.dto.Sample;
import org.springframework.test.context.TestConstructor;



public class LombokTest {
    public static void main(String[] args) {
        Sample dto = new Sample();
        dto.setNo(1);
        dto.setName("구예진");
        System.out.println(dto.toString());
    }



}
