package com.template.method;

import java.util.Random;
import java.util.stream.IntStream;

public class RandomInputGenerator extends DigitsGenerator {

    int[] generate(){

        int[] array = IntStream.generate(() ->
            new Random().nextInt(100)
        ).limit(121).toArray();

        return array;
    }

    // here we use hook
    @Override
    boolean shouldPrint(){
        return false;
    }

}
