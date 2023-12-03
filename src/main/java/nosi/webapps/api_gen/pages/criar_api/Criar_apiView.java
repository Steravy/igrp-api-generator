package nosi.webapps.api_gen.pages.criar_api;

import nosi.core.webapp.Model;
import nosi.core.webapp.View;
import nosi.core.gui.components.*;
import nosi.core.gui.fields.*;
import static nosi.core.i18n.Translator.gt;

public class Criar_apiView extends View {

	public Field header_1_text;
	public Field nome_da_api;
	public Field url_base;
	public Field gerar_documentacao;
	public Field gerar_documentacao_check;
	public Field nome_do_metodo;
	public Field tipo_de_retorno;
	public Field metodo_http;
	public Field path;
	public Field parametros_de_entrada;
	public IGRPSectionHeader header_1;
	public IGRPForm form_1;
	public IGRPSeparatorList separatorlist_1;

	public IGRPToolsBar toolsbar_1;
	public IGRPButton btn_save;

	public Criar_apiView(){

		this.setPageTitle("Criar_API");
			
		header_1 = new IGRPSectionHeader("header_1","");

		form_1 = new IGRPForm("form_1","");

		separatorlist_1 = new IGRPSeparatorList("separatorlist_1","");

		header_1_text = new TextField(model,"header_1_text");
		header_1_text.setLabel(gt(""));
		header_1_text.setValue(gt("<p style='text-align: center;'>Criar API</p>"));
		header_1_text.propertie().add("type","text").add("name","p_header_1_text").add("maxlength","4000");
		
		nome_da_api = new TextField(model,"nome_da_api");
		nome_da_api.setLabel(gt("Nome da API"));
		nome_da_api.propertie().add("name","p_nome_da_api").add("type","text").add("maxlength","250").add("required","true").add("readonly","false").add("disabled","false").add("disablehtml","true").add("placeholder",gt("Insira o nome da API a criar")).add("desclabel","false").add("inputmask","").add("tooltip","false").add("disable_copy_paste","false");
		
		url_base = new TextField(model,"url_base");
		url_base.setLabel(gt("URL Base"));
		url_base.propertie().add("name","p_url_base").add("type","text").add("maxlength","250").add("required","false").add("readonly","false").add("disabled","false").add("disablehtml","true").add("placeholder",gt("")).add("desclabel","false").add("inputmask","").add("tooltip","false").add("disable_copy_paste","false");
		
		gerar_documentacao = new CheckBoxField(model,"gerar_documentacao");
		gerar_documentacao.setLabel(gt("Gerar Documentação"));
		gerar_documentacao.propertie().add("name","p_gerar_documentacao").add("type","checkbox").add("maxlength","250").add("required","true").add("readonly","false").add("disabled","false").add("java-type","int").add("tooltip","false").add("disable_copy_paste","false").add("switch","false").add("check","true");
		
		nome_do_metodo = new TextField(model,"nome_do_metodo");
		nome_do_metodo.setLabel(gt("Nome do Método"));
		nome_do_metodo.propertie().add("name","p_nome_do_metodo").add("type","text").add("maxlength","250").add("required","false").add("readonly","false").add("disabled","false").add("disablehtml","true").add("placeholder",gt("")).add("desclabel","false").add("desc","true");
		
		tipo_de_retorno = new ListField(model,"tipo_de_retorno");
		tipo_de_retorno.setLabel(gt("Tipo de Retorno"));
		tipo_de_retorno.propertie().add("name","p_tipo_de_retorno").add("type","select").add("multiple","true").add("tags","false").add("load_service_data","false").add("domain","Tipos de Retorno « api_gen").add("maxlength","250").add("required","false").add("disabled","false").add("java-type","").add("desc","true");
		
		metodo_http = new ListField(model,"metodo_http");
		metodo_http.setLabel(gt("Método HTTP"));
		metodo_http.propertie().add("name","p_metodo_http").add("type","select").add("multiple","true").add("tags","false").add("load_service_data","false").add("domain","métodos « api_gen").add("maxlength","250").add("required","false").add("disabled","false").add("java-type","").add("desc","true");
		
		path = new TextField(model,"path");
		path.setLabel(gt("Path"));
		path.propertie().add("name","p_path").add("type","text").add("maxlength","250").add("required","false").add("readonly","false").add("disabled","false").add("disablehtml","true").add("placeholder",gt("")).add("desclabel","false").add("desc","true");
		
		parametros_de_entrada = new TextField(model,"parametros_de_entrada");
		parametros_de_entrada.setLabel(gt("Parâmetros de Entrada"));
		parametros_de_entrada.propertie().add("name","p_parametros_de_entrada").add("type","text").add("maxlength","250").add("required","false").add("readonly","false").add("disabled","false").add("disablehtml","true").add("placeholder",gt("")).add("desclabel","false").add("desc","true");
		

		toolsbar_1 = new IGRPToolsBar("toolsbar_1");

		btn_save = new IGRPButton("Guardar","api_gen","Criar_api","save","submit","primary|fa-check","","");
		btn_save.propertie.add("type","specific").add("rel","save").add("refresh_components","");

		
	}
		
	@Override
	public void render(){
		
		header_1.addField(header_1_text);

		form_1.addField(nome_da_api);
		form_1.addField(url_base);
		form_1.addField(gerar_documentacao);

		separatorlist_1.addField(nome_do_metodo);
		separatorlist_1.addField(tipo_de_retorno);
		separatorlist_1.addField(metodo_http);
		separatorlist_1.addField(path);
		separatorlist_1.addField(parametros_de_entrada);


		toolsbar_1.addButton(btn_save);
		this.addToPage(header_1);
		this.addToPage(form_1);
		this.addToPage(separatorlist_1);
		this.addToPage(toolsbar_1);
	}
		
	@Override
	public void setModel(Model model) {
		
		nome_da_api.setValue(model);
		url_base.setValue(model);
		gerar_documentacao.setValue(model);
		nome_do_metodo.setValue(model);
		tipo_de_retorno.setValue(model);
		metodo_http.setValue(model);
		path.setValue(model);
		parametros_de_entrada.setValue(model);	

		separatorlist_1.loadModel(((Criar_api) model).getSeparatorlist_1());
		}
}
