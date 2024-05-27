package kr.co.moran.web.vo;

import java.sql.Date;

import kr.co.moran.web.vo.member.MemberVO;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
public class EventVO {

	@Override
	public String toString() {
		return "EventVO [eId=" + eId + ", mId=" + mId + ", pdId=" + pdId + ", title=" + title + ", contents=" + contents
				+ ", writedate=" + writedate + ", start=" + start + ", end=" + end + ", eventImgVO=" + eventImgVO
				+ ", memberVO=" + memberVO + "]";
	}

	private int eId;
	private int mId;
	private int pdId;
	private String title;
	private String contents;
	private Date writedate;
	private Date start;
	private Date end;
	private EventImgVO eventImgVO;
	private MemberVO memberVO;
	
	public int geteId() {
		return eId;
	}

	public void seteId(int eId) {
		this.eId = eId;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public int getPdId() {
		return pdId;
	}

	public void setPdId(int pdId) {
		this.pdId = pdId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public EventImgVO getEventImgVO() {
		return eventImgVO;
	}

	public void setEventImgVO(EventImgVO eventImgVO) {
		this.eventImgVO = eventImgVO;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}



	
}
