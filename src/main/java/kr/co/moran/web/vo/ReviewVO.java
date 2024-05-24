package kr.co.moran.web.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVO {
	int mId, oId, rId, isMaintain, score;
	String contents, regDate, retentionPeriod;
}
