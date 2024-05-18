package kr.co.moran.web.vo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class EmpVO {
   private String ename;
   private String job;
   private int mgr;
   private String hiredate;
   private int sal;
   private int comm;
   private int deptno;
}