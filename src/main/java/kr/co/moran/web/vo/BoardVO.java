package kr.co.moran.web.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	private int bId, mId, type, viewCnt, likeCnt;
	private String title, contents, regDate, retentionPeriod;

}
