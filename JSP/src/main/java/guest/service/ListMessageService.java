package guest.service;

import guest.model.Message;
import guest.model.MessageDao;
import guest.model.MessageException;

import java.util.List;

public class ListMessageService {

	//-------------------------------------------------------------------
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 3;	// 한페이지당 레코드 수
	private int nextPage;
	
	private static ListMessageService instance;
	
	public static ListMessageService	getInstance() throws MessageException
	{
		if( instance == null )
		{
			instance = new ListMessageService();
		}
		return instance;
	}
	
	private ListMessageService()
	{
		
	}
	
	/* 하단 원래 리스트 페이지 나누지 않고 뽑는 함수
	 * public List <Message> getMessageList() throws MessageException 
	 * { List <Message> mList = MessageDao.getInstance().selectList(); 
	 * 			return mList; }
	 */ 
	
	public List <Message> getMessageList(String pNum) throws MessageException
	{
		// 첫화면에 페이지 번호가 없기 때문에 첫화면에 1페이지 지정하기.
		int pageNum = 1;
		if(pNum != null) pageNum = Integer.parseInt(pNum);
		
		/*		페이지번호		시작레코드번호		끝레코드번호
		 * 			1			1				3
		 * 			2			4				6
		 * 			3			7				9
		 */
		
		int startRow = pageNum * countPerPage -2 ;
		int endRow	 = pageNum * countPerPage ;
			
		List <Message> mList = MessageDao.getInstance().selectList(startRow, endRow);			
		return mList;
	}
	
	public int getTotalPage() throws MessageException {  // 계산은 뷰, 모델에서 하지 않고 서비스(그룹)안에서 사용 
		
		// 전체 레코드 수
		totalRecCount =  MessageDao.getInstance().getTotalCount();
		/*
		 *	전체레코드 수 		페이지수
		 *		9			  3
		 *		10			  4
		 *		11			  4
		 *		12			  4
		 *		13			  5
		 *	전체레코드수에 따라 페이지수 나오게 계산
		 */
		
		//pageTotalCount = (int)Math.ceil(totalRecCount/3.0);
		
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage > 0) pageTotalCount++;

		
		
		return pageTotalCount;  // 페이지 수 리턴
	}
	
	public int getNextPage() throws MessageException{
		
		
		
		/*
		 *		페이지수		다음페이지
		 *		1~10		11
		 *		11~20		22			 
		 * 
		 */
		
		nextPage = pageTotalCount / 10;
		if(pageTotalCount % 10 > 0) nextPage++;
		
		
		
		return nextPage;
	}
	
	
	
}
