package com.FarAway;

import java.util.Date;
import java.text.SimpleDateFormat;

public class Config {
    	
	public final static String SITE_NAME = "FarAway";
	public final static String TITLE_SITE = "FarAway Site";
	public final static String META_DESCRIPTION = "Welcome on my site";
	public final static String META_KEYWORDS = "FarAway";
	    
	public final static String SITE_URL = "/FarAway/";
	public final static String STATIC_URL = "/FarAway/static/";
	    
	public final static String CONTACT_EMAIL = "lepanagi@inf.uth.gr";
	    
    public static String getYear() {
    	Date date = new Date();
    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
    	return dateFormat.format(date);	
    }
	  	
}
  