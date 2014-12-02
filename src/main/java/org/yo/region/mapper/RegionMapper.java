package org.yo.region.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.yo.region.vo.GuideRegionVO;
import org.yo.region.vo.R_photoVO;
import org.yo.region.vo.RegionVO;
import org.yo.region.vo.ThemeVO;

public interface RegionMapper {
	
	//�����κ�
	@Select("select /*INDEX_DESC (tbl_region pk_region)*/no, do, sigun from tbl_region where no > 0")
	public List<RegionVO> regionList();
	
	//�׸� �κ�
	@Select("SELECT NO, NAME, THEMEMODE FROM TBL_THEME")
	public List<ThemeVO> themeList();
	
	//��� �κ�
	@Select("SELECT NO, REGIONNO, PLACE, LNG, LAT, MSG FROM TBL_GUIDEREGION WHERE NO=#{no}")
	public List<GuideRegionVO> guideRegionList(Integer no);
	
	//��ǥ��� ���� ��� �κ�
	@Select("SELECT NO, REGIONNAME, DIR, CONTENT FROM TBL_R_PHOTO")
	public List<R_photoVO> r_photoList();
	
}
