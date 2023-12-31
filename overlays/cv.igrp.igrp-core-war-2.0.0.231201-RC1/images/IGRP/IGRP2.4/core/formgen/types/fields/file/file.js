var FILEFIELD = function(type,params){
	Field.call(this,type,params);

	var GEN = VARS.getGen(),
		field 		= this,
		proprieties = params.properties;

	field.ready = function(){

		field.setPropriety({
			name:'accept',
			value:{
				value: params && params.properties ? params.properties.accept : '',
				options:[
					{ value:'' , label: 'All file extension' },
					
					{ value:'application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document' , label: 'Word' },
					{ value:'application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', label: 'Excel' },
					{ value:'application/vnd.ms-powerpoint,application/vnd.openxmlformats-officedocument.presentationml.presentation', label: 'Power Point' },
					{ value:'text/plain', label: 'Text' },
					{ value:'application/pdf', label: 'PDF' },
					{ value:'application/java-archive,.jar', label: 'JAR' },
					{ value:'application/zip', label: 'ZIP' },					
					{ value:'image/*', label: 'Images' },
					{ value:'video/*', label: 'Videos' },
					{ value:'audio/*', label: 'Audios' },
					{ value:'text/html', label: 'HTML' },
					{ value:'text/csv', label: 'CSV' }
				],
				multiple:true
			}
		});

		field.setPropriety({
			label 	 : 'Targt Rend',
			name     : 'targetrend',
			value    : {
				value : '',
				options : GEN.getSrcFields
			},
			onEditionStart : function(o){
				if(field.GET.rendvalue && field.GET.rendvalue())
					o.input.show();
				else
					o.input.hide();
			}
		});

		field.setPropriety({
			name 	 :'multiple',
			label 	 : 'Multiple',
			value 	 : false,
			//xslValue : 'multiple="multiple"' //XSL VALUE WHEN PROPRIETY IS TRUE
		});

		field.setPropriety({
			name 	 :'rendvalue',
			label 	 : 'Rend Value',
			value 	 : false,
			xslValue : 'file2base64', //XSL VALUE WHEN PROPRIETY IS TRUE
			onEditionStart : function(v){
				$('input',v.input).on('change',function(){
					var action  = $(this).is(':checked') ? 'show' : 'hide'; 
					$('.gen-properties-setts-holder div[rel="targetrend"]')[action]();
				});
			}
		});
	}
}
this[VARS.name].declareField({
	type:'file',
	field:FILEFIELD
});