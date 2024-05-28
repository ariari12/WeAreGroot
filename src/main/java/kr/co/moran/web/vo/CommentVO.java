package kr.co.moran.web.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommentVO {
	int cId,bId,mId,cParentId,eId,likeCnt, isMaintain;
	String contents, regDate, retentionPeriod;
}
