package kr.co.moran.web.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data @Getter @Setter @ToString
public class CategoryVO {
	private int cId;
	private String name;
	private int cParentId;
}
