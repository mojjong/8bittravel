package org.yo.qna.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.yo.qna.vo.QnaVO;
import org.yo.web.util.QnaCriteria;

public interface QnaMapper {

	
	
	
	//@Select("select rownum rn, no, parent, title, content, regdate, userid from tbl_qna where rownum <=11 and rownum >0 order by no desc")
	@Select("select rn, no, parent, title, content, ceil(sysdate-regdate) newdate, userid, cnt from (select rownum rn, no, parent, title, content, regdate, userid, count(no) over() cnt from tbl_qna where rownum >0 and rownum <=((CEIL(#{currentPage})*50)+1) order by no desc) where rn >=((#{currentPage}-1)*10) and rn<=(#{currentPage}*10)")
	public List<QnaVO> list(QnaCriteria cri);

	@Insert("insert into tbl_qna(no, title, content, userid) values(seq_qna.nextval, #{title}, #{content}, #{userid})") 
	public void write(QnaVO vo);

	@Delete("delete from tbl_qna where no=#{no}")
	public void delete(QnaVO no);

	@Update("update tbl_qna set title=#{title}, content=#{content}")
	public void update(QnaVO no);
	
}


