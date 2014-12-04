package org.yo.user.mapper;

import org.apache.ibatis.annotations.Select;
import org.yo.user.vo.UserVO;

public interface UserMapper {
	
	public void join(UserVO vo);
	
	@Select("SELECT COUNT(*) CNT FROM TBL_USER WHERE ID=#{id}")
	public String checkid(String id);

}
