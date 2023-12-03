package nosi.webapps.api_gen.pages.criar_api;

import nosi.core.webapp.Model;
import nosi.core.webapp.RParam;
import nosi.core.webapp.databse.helpers.BaseQueryInterface;
import nosi.core.gui.components.IGRPSeparatorList.Pair;
import nosi.core.webapp.SeparatorList;
import java.util.ArrayList;
import java.util.List;
import jakarta.validation.Valid;
import nosi.core.validator.constraints.*;

public class Criar_api extends Model{		

	@RParam(rParamName = "p_header_1_text")
	private String header_1_text;

	@NotNull()
	@RParam(rParamName = "p_nome_da_api")
	private String nome_da_api;

	@RParam(rParamName = "p_url_base")
	private String url_base;

	@NotNull()
	@RParam(rParamName = "p_gerar_documentacao")
	private int gerar_documentacao;
	@RParam(rParamName = "p_gerar_documentacao_check")
	private int gerar_documentacao_check;
	
	@SeparatorList(name = Separatorlist_1.class)
	@Valid
	private List<Separatorlist_1> separatorlist_1 = new ArrayList<>();	
	public void setSeparatorlist_1(List<Separatorlist_1> separatorlist_1){
		this.separatorlist_1 = separatorlist_1;
	}
	public List<Separatorlist_1> getSeparatorlist_1(){
		return this.separatorlist_1;
	}
	@RParam(rParamName = "p_separatorlist_1_id")
	private String[] p_separatorlist_1_id;
	@RParam(rParamName = "p_separatorlist_1_del")
	private String[] p_separatorlist_1_del;
	@RParam(rParamName = "p_separatorlist_1_edit")
	private String[] p_separatorlist_1_edit;
	
	public void setP_separatorlist_1_id(String[] p_separatorlist_1_id){
		this.p_separatorlist_1_id = p_separatorlist_1_id;
	}
	public String[] getP_separatorlist_1_id(){
		return this.p_separatorlist_1_id;
	}
	
	public void setP_separatorlist_1_del(String[] p_separatorlist_1_del){
		this.p_separatorlist_1_del = p_separatorlist_1_del;
	}
	public String[] getP_separatorlist_1_del(){
		return this.p_separatorlist_1_del;
	}
	
	public void setP_separatorlist_1_edit(String[] p_separatorlist_1_edit){
		this.p_separatorlist_1_edit = p_separatorlist_1_edit;
	}
	public String[] getP_separatorlist_1_edit(){
		return this.p_separatorlist_1_edit;
	}
	
	public void setHeader_1_text(String header_1_text){
		this.header_1_text = header_1_text;
	}
	public String getHeader_1_text(){
		return this.header_1_text;
	}
	
	public void setNome_da_api(String nome_da_api){
		this.nome_da_api = nome_da_api;
	}
	public String getNome_da_api(){
		return this.nome_da_api;
	}
	
	public void setUrl_base(String url_base){
		this.url_base = url_base;
	}
	public String getUrl_base(){
		return this.url_base;
	}
	
	public void setGerar_documentacao(int gerar_documentacao){
		this.gerar_documentacao = gerar_documentacao;
	}
	public int getGerar_documentacao(){
		return this.gerar_documentacao;
	}
	public void setGerar_documentacao_check(int gerar_documentacao_check){
		this.gerar_documentacao_check = gerar_documentacao_check;
	}
	public int getGerar_documentacao_check(){
		return this.gerar_documentacao_check;
	}


	public static class Separatorlist_1{
		private Pair separatorlist_1_id;
		@PairNotNull()
private Pair nome_do_metodo;
		@PairNotNull()
private Pair tipo_de_retorno;
		@PairNotNull()
private Pair metodo_http;
private Pair path;
private Pair parametros_de_entrada;
		public void setSeparatorlist_1_id(Pair separatorlist_1_id){
			this.separatorlist_1_id = separatorlist_1_id;
		}
		public void setSeparatorlist_1_id(String key){
			this.setSeparatorlist_1_id(key, key);
		}
		public void setSeparatorlist_1_id(String key, String value){
			this.separatorlist_1_id= new Pair(key, value);
		}

		public Pair getSeparatorlist_1_id(){
			return this.separatorlist_1_id;
		}
		public void setNome_do_metodo(Pair nome_do_metodo){
			this.nome_do_metodo = nome_do_metodo;
		}
		public void setNome_do_metodo(String key){
			this.setNome_do_metodo(key, key);
		}
		public void setNome_do_metodo(String key, String value){
			this.nome_do_metodo= new Pair(key, value);
		}

		public Pair getNome_do_metodo(){
			return this.nome_do_metodo;
		}

		public void setTipo_de_retorno(Pair tipo_de_retorno){
			this.tipo_de_retorno = tipo_de_retorno;
		}
		public void setTipo_de_retorno(String key){
			this.setTipo_de_retorno(key, key);
		}
		public void setTipo_de_retorno(String key, String value){
			this.tipo_de_retorno= new Pair(key, value);
		}

		public Pair getTipo_de_retorno(){
			return this.tipo_de_retorno;
		}

		public void setMetodo_http(Pair metodo_http){
			this.metodo_http = metodo_http;
		}
		public void setMetodo_http(String key){
			this.setMetodo_http(key, key);
		}
		public void setMetodo_http(String key, String value){
			this.metodo_http= new Pair(key, value);
		}

		public Pair getMetodo_http(){
			return this.metodo_http;
		}

		public void setPath(Pair path){
			this.path = path;
		}
		public void setPath(String key){
			this.setPath(key, key);
		}
		public void setPath(String key, String value){
			this.path= new Pair(key, value);
		}

		public Pair getPath(){
			return this.path;
		}

		public void setParametros_de_entrada(Pair parametros_de_entrada){
			this.parametros_de_entrada = parametros_de_entrada;
		}
		public void setParametros_de_entrada(String key){
			this.setParametros_de_entrada(key, key);
		}
		public void setParametros_de_entrada(String key, String value){
			this.parametros_de_entrada= new Pair(key, value);
		}

		public Pair getParametros_de_entrada(){
			return this.parametros_de_entrada;
		}

	}

	public void loadSeparatorlist_1(BaseQueryInterface query) {
		this.setSeparatorlist_1(this.loadFormList(query,Separatorlist_1.class));
	}

}
