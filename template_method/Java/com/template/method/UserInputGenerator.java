package com.template.method;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;
import java.util.Random;
import java.util.stream.IntStream;

public class UserInputGenerator extends DigitsGenerator{

    int[] generate(){
        int[] array = new int[20];

        try(BufferedReader in = new BufferedReader(new InputStreamReader(System.in))){
            for (int i = 0; i < 20; i++) array[i] = Integer.parseInt(in.readLine());
        }catch(IOException | NumberFormatException e){
             System.out.println("Error while reading the input - will generate random array.");
             array = randomArray();
         }

         return array;
    }

    // when error do the same as Random
    private int[] randomArray(){
        int[] array = IntStream.generate(() ->
                new Random().nextInt(100)
        ).limit(20).toArray();

        return array;
    }
}
