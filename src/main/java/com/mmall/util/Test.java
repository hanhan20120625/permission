package com.mmall.util;

import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.Multimap;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Test {

    public static void main(String[] args) {

        List<String> list = new ArrayList<>();
        list.add("ceshi");
        list.add("1234");
        list.add("1234");
        list.add("sssss");
        list.add("35");
        System.out.println("list = " + list);
        Map<String, List<String>> map = new HashMap<String, List<String>>();
        map.put("123", list);

        //abcd放入list里
        List<String> list1 = map.get("123");
        list1.add("abcd");
        map.put("123", list1);

        Multimap<String, String> multimap = ArrayListMultimap.create();
        multimap.put("123","ceshi");
        multimap.put("123","1234");
        multimap.put("123","1234");
        multimap.put("123","sssss");
        multimap.put("123","35");
        List<String> strings = (List<String>) multimap.get("123");
        for (String str : strings) {
            System.out.println("str = " + str);
        }
        multimap.put("123", "abcd");
        System.out.println("multimap = " + multimap);

//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
//        String code = dateFormat.format(new Date()) + "_" + (int) (Math.random() * 100);
//        System.out.println("code = " + code);

//
//        Set<String> set = new HashSet<>();
//        set.add("张");
//        set.add("李");
//        set.add("赵");
//        set.add("王");
//
//        Set<String> set1 = new HashSet<>();
//        set1.add("张");
//        set1.add("王");
//        set1.add("孟");
//        set1.add("孙");
//        set.removeAll(set1);
//
//        for (String s : set) {
//            System.out.println("s = " + s);
//        }

    }

}
