package kr.co.moran.web.vo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class DeptVO {
   private int deptno;
   private String dname;
   private String loc;
}