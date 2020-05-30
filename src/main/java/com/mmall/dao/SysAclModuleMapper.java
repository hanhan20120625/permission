package com.mmall.dao;

import com.mmall.model.SysAclModule;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysAclModuleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysAclModule record);

    int insertSelective(SysAclModule record);

    SysAclModule selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysAclModule record);

    int updateByPrimaryKey(SysAclModule record);

    /**
     * 校验同一级下是否出现相同的权限名称
     *
     * @param parentId
     * @param aclModuleName
     * @param deptId
     * @return
     */
    int countByNameAndParentId(@Param("parentId") Integer parentId, @Param("name") String aclModuleName, @Param("id") Integer deptId);

    List<SysAclModule> getChildAclModuleListByLevel(@Param("level") String level);

    void batchUpdateLevel(@Param("sysAclModuleList") List<SysAclModule> sysAclModuleList);

    List<SysAclModule> getAllAclModule();

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 18:45 </p>
     * <p>description 根据权限模块id查询权限模块数量 </p>
     *
     * @param aclModuleId 模块数量
     * @return
     */
    int countByParentId(@Param("aclModuleId") int aclModuleId);
}