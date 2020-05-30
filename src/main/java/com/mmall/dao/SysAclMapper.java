package com.mmall.dao;

import com.mmall.beans.PageQuery;
import com.mmall.model.SysAcl;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysAclMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysAcl record);

    int insertSelective(SysAcl record);

    SysAcl selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysAcl record);

    int updateByPrimaryKey(SysAcl record);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 18:46 </p>
     * <p>description 根据模块id查询权限模块数量 </p>
     *
     * @param aclModuleId 权限模块id
     * @return
     */
    int countByAclModuleId(@Param("aclModuleId") int aclModuleId);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 13:52 </p>
     * <p>description 根据权限模块id查询所有权限 </p>
     *
     * @param aclModuleId
     * @return
     */
    List<SysAcl> getPageByAclModuleId(@Param("aclModuleId") int aclModuleId, @Param("page") PageQuery page);

    int countByNameAndAclModuleId(@Param("aclModuleId") int aclModuleId, @Param("name") String name, @Param("id") Integer id);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 13:54 </p>
     * <p>description 获取所有的权限信息 </p>
     *
     * @param
     * @return
     */
    List<SysAcl> getAll();

    List<SysAcl> getByIdList(@Param("idList") List<Integer> idList);

    List<SysAcl> getByUrl(@Param("url") String url);
}