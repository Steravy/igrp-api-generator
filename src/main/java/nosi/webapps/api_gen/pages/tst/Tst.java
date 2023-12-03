package nosi.webapps.api_gen.pages.tst;

import nosi.core.webapp.Model;
import nosi.core.webapp.RParam;

public class Tst extends Model{		

	@RParam(rParamName = "p_form_1_text_1")
	private String form_1_text_1;
	
	public void setForm_1_text_1(String form_1_text_1){
		this.form_1_text_1 = form_1_text_1;
	}
	public String getForm_1_text_1(){
		return this.form_1_text_1;
	}



}
