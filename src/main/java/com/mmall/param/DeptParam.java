package com.mmall.param;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@ToString
public class DeptParam {
    private Integer id;

    @NotBlank(message = "部门名称不可以为空")
    @Length(max = 15,min = 2,message = "不能名称长度需要在2-15个字")
    private String name;

    private Integer parentId =0;

    @NotNull(message = "展示顺序不可以为空")
    private Integer seq;

    @Length(max = 150,message = "备注长度需要在150个字以内")
    private String remark;

   /* private Integer id;

    @NotBlank(message = "部门名称不能为空")
    @Length(max = 15,min = 2,message = "不能名称长度需要在2-15个字")
    private String name;


    private Integer parenId = 0;

    @NotNull(message = "展示顺序不可以为空")
    private Integer seq;

    @Length(max = 150, message = "备注长度需要在150个字以内")
    private String remark;*/

}
