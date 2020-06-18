package mapper.CustomMapper;

import po.TbUser;

public interface TbUserMapperL {
    /**
     * 更新单个用户信息
     * @param tbUser
     * @throws Exception
     */
    public void updateUserOne(TbUser tbUser) throws Exception;
}
