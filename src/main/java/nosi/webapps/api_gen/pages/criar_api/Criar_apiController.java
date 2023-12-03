package nosi.webapps.api_gen.pages.criar_api;

import nosi.core.webapp.Controller;//
import java.io.IOException;//
import nosi.core.webapp.Core;//
import nosi.core.webapp.Response;//
/* Start-Code-Block (import) */
/* End-Code-Block */
/*----#start-code(packages_import)----*/


/*----#end-code----*/
		
public class Criar_apiController extends Controller {
	public Response actionIndex() throws IOException, IllegalArgumentException, IllegalAccessException{
		Criar_api model = new Criar_api();
		model.load();
		Criar_apiView view = new Criar_apiView();
		view.tipo_de_retorno.loadDomain("Tipos de Retorno","api_gen","-- Selecionar --");
		view.metodo_http.loadDomain("métodos","api_gen","-- Selecionar --");
		/*----#gen-example
		  EXAMPLES COPY/PASTE:
		  INFO: Core.query(null,... change 'null' to your db connection name, added in Application Builder.
		model.loadSeparatorlist_1(Core.query(null,"SELECT 'Natus sit totam stract ipsum' as nome_do_metodo,'12' as tipo_de_retorno,'12' as metodo_http,'Aperiam laudantium doloremque perspiciatis omnis' as path,'Laudantium ipsum consectetur ut sit' as parametros_de_entrada "));
		  ----#gen-example */
		/* Start-Code-Block (index) *//* End-Code-Block (index) */
		/*----#start-code(index)----*/
		
		
		/*----#end-code----*/
		view.setModel(model);
		return this.renderView(view);	
	}
	
	public Response actionSave() throws IOException, IllegalArgumentException, IllegalAccessException{
		Criar_api model = new Criar_api();
		model.load();
		/*----#gen-example
		  EXAMPLES COPY/PASTE:
		  INFO: Core.query(null,... change 'null' to your db connection name, added in Application Builder.
		  this.addQueryString("p_id","12"); //to send a query string in the URL
		  return this.forward("api_gen","Criar_api","index",this.queryString()); //if submit, loads the values
		  Use model.validate() to validate your model
		  ----#gen-example */
		/* Start-Code-Block (save)  *//* End-Code-Block  */
		/*----#start-code(save)----*/
		
		
		/*----#end-code----*/
		return this.redirect("api_gen","Criar_api","index", this.queryString());	
	}
	/* Start-Code-Block (custom-actions)  *//* End-Code-Block  */
/*----#start-code(custom_actions)----*/


/*----#end-code----*/
}
