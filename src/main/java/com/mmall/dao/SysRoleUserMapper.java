package com.mmall.dao;

import com.mmall.model.SysRoleUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysRoleUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysRoleUser record);

    int insertSelective(SysRoleUser record);

    SysRoleUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysRoleUser record);

    int updateByPrimaryKey(SysRoleUser record);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 13:50 </p>
     * <p>description 根据用户id得到角色id </p>
     *
     * @param userId
     * @return
     */
    List<Integer> getRoleIdListByUserId(@Param("userId") int userId);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 15:11 </p>
     * <p>description 根据角色id查询用户id </p>
     *
     * @param roleId
     * @return
     */
    List<Integer> getUserIdListByRoleId(@Param("roleId") int roleId);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 18:21 </p>
     * <p>description 根据角色id删除用户与角色关系 </p>
     *
     * @param roleId 角色id
     * @return
     */
    void deleteByRoleId(@Param("roleId") int roleId);

    /**
     * <p>author molin </p>
     * <p>date 2018/12/20 </p>
     * <p>time 18:22 </p>
     * <p>description 批量创建用户与角色关系 </p>
     *
     * @param roleUserList 用户与角色关系list
     * @return
     */
    void batchInsert(@Param("roleUserList") List<SysRoleUser> roleUserList);

    List<Integer> getUserIdListByRoleIdList(@Param("roleIdList") List<Integer> roleIdList);


}