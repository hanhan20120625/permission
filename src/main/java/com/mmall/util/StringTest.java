package com.mmall.util;

import com.google.common.base.Splitter;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author molin
 * @description
 * @date 2018/12/21
 * @time 10:04
 */
public class StringTest {

    public static void main(String[] args) {

        String[] str = {"1", "2", "3", "4"};

        String str1 = "1, 2, 3";

        List<String> str1list = Splitter.on(",").trimResults().omitEmptyStrings().splitToList(str1);
        List<Integer> collect = str1list.stream().map(stritm -> Integer.parseInt(stritm)).collect(Collectors.toList());
        for (int i = 0; i <collect.size(); i++) {
            Integer integer = collect.get(i);
            System.out.println("integer = " + integer);

        }


//        for (int i = 0; i < str1.length(); i++) {
//            String[] strings = str1.split(",");
//            for (int j = 0; j < strings.length; j++) {
//                String string = strings[j];
//                int i1 = Integer.parseInt(string.trim());
//                System.out.println("i1 = " + i1);
//            }
//        }
//        Multimap<Integer, Object> strmap = ArrayListMultimap.create();


//
//        for (int i = 0; i < str.length; i++) {
//            String strs = str[i];
//            String[] strings = strs.split(",");
//            int i1 = Integer.parseInt(strs);
//            System.out.println("i1 = " + i1);
//            System.out.println("--------------");
//            List<String> strlist = Splitter.on(",").trimResults().omitEmptyStrings().splitToList(strs);
//            Set<Integer> collect = strlist.stream().map(stritm -> Integer.parseInt(stritm)).collect(Collectors.toSet());
//            System.out.println("collect = " + collect);
//            strmap.put(1, collect);
        }

//        for (int i = 0; i < strmap.size(); i++) {
//            List<Integer> strmap1 = (List) strmap.get(i);
//            System.out.println("strmap1 = " + strmap1);
//        }
//        System.out.println("strmap = " + strmap);


//    }
}
