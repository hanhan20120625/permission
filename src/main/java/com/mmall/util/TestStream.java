package com.mmall.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;

/**
 * @author molin
 * @description
 * @date 2018/12/19
 * @time 11:18
 * <p>
 * 一、Stream的三个步骤
 * 1.创建Stream
 * 2.中间操作
 * 3.终止操作（终端操作）
 */
public class TestStream {

    public static void main(String[] args) {
//        //1.可以通过Collection系列集合提供的stream() 或 parallelStream()
//        List<String> list = new ArrayList<>();
//        Stream<String> stream1 = list.stream();
//
//        //2.通过Arrays中的静态方法stream()获取数组流
//        String[] strings = new String[10];
//        Stream<String> stream2 = Arrays.stream(strings);
//
//        //3.通过Stream类中的静态方法of
//        Stream<String> stream = Stream.of("aa", "bb", "cc");
//
//        //4创建无限流
//        //迭代
//        Stream<Integer> stream4 = Stream.iterate(0, (x) -> x + 2);
//        stream4.limit(10).forEach(System.out::println);
//
//        //生成
//        Stream.generate(() -> Math.random())
//                .limit(5).forEach(System.out::println);

        List<Integer> list1 = new ArrayList<>();
        list1.add(1);
        list1.add(2);
        list1.add(2);
        list1.add(3);
        list1.add(4);
        list1.add(4);
        list1.add(5);

        List<String> list = Arrays.asList("张三", "李四", "王五", "赵六", "田七");

        /**
         * 筛选与切片
         * filter——接收Lambda,从流中排出某些元素。
         * limit——截断流，使其元素不超过给定数量。
         * skip(n)——跳过元素，返回一个丢掉了前n个元素的流。若流中元素不足n个，则返回一个空流。与limit(n)互补
         * distinct——筛选，通过流所生产元素的hashCode()和equals()去除重复元素
         */

//        //中间操作:不会执行任何操作
//        //内部迭代：迭代操作由Stream API完成
//        Stream<Integer> stream = list1.stream().filter((e) -> {
//            System.out.println("Stream Api 的中间操作");
//            return e.compareTo(2) < 0;
//        });
//
//        //终止操作：一次性执行全部内容，称之为"惰性求值"
//        stream.forEach(System.out::println);


//        list1.stream().filter((e)-> {
//            System.out.println("短路！");
//            return e.intValue() == 3;
//        })
//                        .limit(1)
//                        .forEach(System.out::println);

//        list1.stream()
//                .filter((e) -> e.intValue() == 4)
//                .skip(1)
//                .distinct()
//                .forEach(System.out::println);

        /**
         * 映射
         * map——接收Lambda,将元素转换成其他形式或提取信息。接收一个函数作为参数，该函数会被应用到每个元素上，
         * 并将其映射成一个新的元素。
         * flatMap——接收一个函数作为参数，将流中的每个值换成另一个流，然后把所有的流链接成一个流
         */

        List<String> list2 = Arrays.asList("aaa", "bbb", "ccc", "ddd");
//        list2.stream().map((str) -> str.toUpperCase())
//                .forEach(System.out::println);
//
//        System.out.println("--------");
//
//        list.stream()
//                .map(String::toString).forEach(System.out::println);
//
//        System.out.println("--------");

        /**Stream<Stream<Character>> stream = list2.stream()
         .map(TestStream::filterCharacter); //{{a,a,a},{b,b,b}...}

         stream.forEach((sm) ->{
         sm.forEach(System.out::println);
         });
         */

//        System.out.println("----------");
//
//        Stream<Character> sm = list2.stream()
//                .flatMap(TestStream::filterCharacter);//{a,a,a,b,b,b.....}
//
//        sm.forEach(System.out::println);


        /**
         * 排序
         * sorted()——自然排序（Comparable）
         * sorted(Comparable com)——定制排序(Comparable)
         */
        List<String> list3 = Arrays.asList("ccc", "ddd", "aaa", "bbb");
        list3.stream().sorted().forEach(System.out::println);

        System.out.println("---------");

        list1.stream().sorted((e1, e2) -> {
            if (e1.intValue() == e2.intValue()) {
                return e1.compareTo(e2);
            } else {
                return -e1.compareTo(e2);
            }
        }).forEach(System.out::println);

    }


    public static Stream<Character> filterCharacter(String str) {
        List<Character> list = new ArrayList<>();
        for (Character ch : str.toCharArray()) {
            list.add(ch);
        }
        return list.stream();
    }
}
