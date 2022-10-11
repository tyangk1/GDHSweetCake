package com.gdhsweetcakejavafinal.tools;

import java.util.Random;

public class GenerateId {

    private static String getRandomNumber() {
        int number = (new Random()).nextInt(1000);
        String id = number + "";
        if (number < 10) {
            id = "00" + number;
        } else if (number < 100) {
            id = "0" + number;
        }

        return id;
    }

    public static String generateId(String code) {
        return code + getRandomNumber();
    }

    public static void main(String[] args) {
        System.out.println(GenerateId.generateId(""));
    }
}
