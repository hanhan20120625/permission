package com.mmall.util;

import com.google.common.base.Splitter;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author molin
 * @description
 * @date 2018/12/18
 * @time 10:02
 */
public class StringUtil {

    public static List<Integer> splitToListInt(String str) {
        /**
         * 以“,”分割、去除前后空格、去除空字符串、转化成List集合
         */
        List<String> strList = Splitter.on(",").trimResults().omitEmptyStrings().splitToList(str);
        return strList.stream().map(strItem -> Integer.parseInt(strItem)).collect(Collectors.toList());

    }
}
