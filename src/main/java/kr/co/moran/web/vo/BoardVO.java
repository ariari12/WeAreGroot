package kr.co.moran.web.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	private int b_id, m_id, b_type, b_view_cnt, b_like_cnt;
	private String b_title, b_contents, b_regdate, b_retention_period;

}
