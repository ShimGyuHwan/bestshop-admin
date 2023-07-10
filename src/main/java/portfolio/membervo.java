package portfolio;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class membervo {
	int midx;
	
	String mid,mname,mpass,maccept,memail,maddr,mtel,mphone,mlevel,mpoint,memailok,msmsok,mdormant;
	Date mjoin,mlogin,mdrop;
	
	//paging
	String page;

}
