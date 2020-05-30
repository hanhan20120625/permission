package com.mmall.dao;

import com.mmall.model.SysRoleAcl;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysRoleAclMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysRoleAcl record);

    int insertSelective(SysRoleAcl record);

    SysRoleAcl selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysRoleAcl record);

    int updateByPrimaryKey(SysRoleAcl record);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 10:42 </p>
     * <p>description 根据角色Id得到权限Id </p>
     *
     * @param roleIdList 角色Id List
     * @return
     */

    List<Integer> getAclIdListByRoleIdList(@Param("roleIdList") List<Integer> roleIdList);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 18:14 </p>
     * <p>description 根据角色id删除角色权限 </p>
     *
     * @param roleId
     * @return
     */
    void deleteByRoleId(@Param("roleId") int roleId);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 14:10 </p>
     * <p>description 批量新增角色权限 </p>
     *
     * @param roleAclList 角色权限关系list
     * @return
     */
    void batchInsert(@Param("roleAclList") List<SysRoleAcl> roleAclList);

    List<Integer> getRoleIdListByAclId(@Param("aclId") int aclId);

}