package com.template.method;

import java.util.Arrays;

abstract public class DigitsGenerator {

    int[] getDigits(){

        int[] arrayToSort = generate();

        if(shouldPrint()) printDigits(arrayToSort);

        sort(arrayToSort);

        if(shouldPrint()) printDigits(arrayToSort);

        return arrayToSort;
    }

    // user must override this method
    abstract int[] generate();

    void printDigits(int[] arrayToPrint){
        for(int el: arrayToPrint){
            System.out.print(el+ " ");
        }
    }

    void sort(int[] arrayToSort){
        Arrays.sort(arrayToSort);
    }

    // hook
    boolean shouldPrint(){
        return true;
    }

}
