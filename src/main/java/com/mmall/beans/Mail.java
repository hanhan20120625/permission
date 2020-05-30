package com.mmall.beans;

import lombok.*;

import java.util.Set;

/**
 * @author molin
 * @description
 * @date 2018/12/6
 * @time 22:53
 */
@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor //无参构造函数
@AllArgsConstructor //全参构造函数
public class Mail {

    private String subject;//邮件主题

    private String message;//邮件信息

    private Set<String> receivers;//收件人邮箱

}
