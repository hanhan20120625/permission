package com.mmall.util;

import java.util.Arrays;
import java.util.List;

/**
 * @author molin
 * @description
 * @date 2018/12/19
 * @time 14:56
 */
public class TestStreamApI {


    public static void main(String[] args){

        /**
         * 归约
         * reduce(T identity, BinaryOperator) / reduce(BinaryOperator)——可以将流中元素反复结合起来，得到一个值
         */
        List<Integer> list = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9);
        Integer sum = list.stream()
                .reduce(0, (x, y) -> x + y);
        System.out.println(sum);

        /**
         * 搜集
         * collect——将流转换为其他形式，接收一个Collector接口实现，用于给Stream中元素做汇总的方法
         */

    }
    /**
     * 查找与匹配
     * allMatch——检查是否匹配所有元素
     * anyMatch——检查是否至少匹配一个元素
     * noneMatch——检查是否没有匹配所有元素
     * findFirst——返回第一个元素
     * findAny——返回当前流中的任意元素
     * count——返回当前流中的总个数
     * max——返回流中最大值
     * min——返回流中最小值
     */

}
