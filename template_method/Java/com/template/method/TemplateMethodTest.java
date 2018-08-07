package com.template.method;

public class TemplateMethodTest {

    public static void main(String[] args) {

    UserInputGenerator userGenerator = new UserInputGenerator();
    RandomInputGenerator randomInputGenerator = new RandomInputGenerator();

        // this will print because we used hook
        userGenerator.getDigits();
        // this will not print - no hook
        int[] array = randomInputGenerator.getDigits();

        System.out.println("Some futher logic");
        printArray(array);
    }

    static void printArray(int[] array){
        for(int el: array) System.out.print(el + " ");
    }
}
