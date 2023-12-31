var GENCALENDAR = function(name,params){
	CONTAINER.call(this,name,params);
	
	var container = this;
	var GEN = VARS.getGen();

	container.xml.type 		= 'calendar';
	container.xml.structure = 'form';
	container.xml.genRemote = true;
	container.autoSetField 	= false;

	container.contextMenu = {
		type   : 'button',
		holder : '.igrp-calendar-ctx',
		menu   : {
			selector: '.igrp-calendar-ctx-item',
			label   : 'span',
		}
	};

	let date = new Date().toJSON().slice(0,10);

	/*GEN.setBtnActionAttr(container,{
		value:''
	});*/

	container.onXMLGenerate = function(xmlStr){
		const xdate = date.replace(/(\d*)-(\d*)-(\d*)/,'$3-$2-$1');
		var tag  = $.trim(container.GET.tag()),
			rtn  = '<'+tag+'_events type="table" xml-type="table" gen-type="container" gen-group="true">'+
			'<fields>'+
				'<'+tag+'_title name="p_'+tag+'_title" type="text" maxlength="200"><label>Título do Evento</label></'+tag+'_title>'+
				'<'+tag+'_description name="p_'+tag+'_description" type="text" maxlength="400"><label>Descrição do evento</label></'+tag+'_description>'+
				'<'+tag+'_id name="p_'+tag+'_id" type="text" maxlength="30"><label>ID do Evento</label></'+tag+'_id>'+
				'<'+tag+'_start name="p_'+tag+'_start" type="date" maxlength="30"><label>Data Inicio do Evento</label></'+tag+'_start>'+
				'<'+tag+'_end  type="date" maxlength="30"><label>Data Fim do Evento</label></'+tag+'_end>'+
				'<'+tag+'_color name="p_'+tag+'_color" type="text" maxlength="30"><label>Cor de Fundo do Evento simboliza prioridade</label></'+tag+'_color>'+
				'<'+tag+'_allday name="p_'+tag+'_allday" type="text" maxlength="30"><label>Evento Dia Todo (value Boolean)</label></'+tag+'_allday>'+
			'</fields>'+
			'<table><value>'+
				'<row> <context-menu></context-menu>'+
			        '<'+tag+'_title name="p_'+tag+'_title">Birthday</'+tag+'_title>'+
			        '<'+tag+'_start name="p_'+tag+'_start" >'+xdate+'T10:00:00</'+tag+'_start>'+
			        '<'+tag+'_id name="p_'+tag+'_id">1</'+tag+'_id>'+
			        '<'+tag+'_end name="p_'+tag+'_end">'+xdate+'T12:00:00</'+tag+'_end>'+
			        '<'+tag+'_color name="p_'+tag+'_color">red</'+tag+'_color>'+
					'<'+tag+'_allday>false</'+tag+'_allday>'+
					'<'+tag+'_description name="p_'+tag+'_description">Testes Event</'+tag+'_description>'+
				'</row>'+
				'<row> <context-menu></context-menu>'+
					'<'+tag+'_title name="p_'+tag+'_title">Meeting</'+tag+'_title>'+
					'<'+tag+'_start name="p_'+tag+'_start" >'+xdate+'T10:00:00</'+tag+'_start>'+
					'<'+tag+'_id name="p_'+tag+'_id">1</'+tag+'_id>'+
					'<'+tag+'_end name="p_'+tag+'_end">'+xdate+'T12:00:00</'+tag+'_end>'+
					'<'+tag+'_color name="p_'+tag+'_color">green</'+tag+'_color>'+
					'<'+tag+'_allday>true</'+tag+'_allday>'+
					'<'+tag+'_description name="p_'+tag+'_description">With Jose</'+tag+'_description>'+
				'</row>'+
			'</value>';


		

			if(container.contextMenu && container.contextMenu.items[0])
				rtn+=GEN.genContextMenu(container);

		rtn+='</table></'+tag+'_events>';

		return rtn;
	};

	container.includes = {
		xsl: ['IGRP-calendar.tmpl'],
		css: [
			{ 
				path:'/core/calendar/3.0.1/css/fullcalendar.print.css',
				media:'print'
			},
			{ 
				path:'/core/calendar/3.0.1/css/fullcalendar.min.css' 
			},
			{ 
				path:'/core/calendar/3.0.1/css/igrp.calendar.css' 
			}
		],
		js : [
			{ 
				path:'/core/moment/moment.min.js'
			},
			
			{ 
				path	:'/core/calendar/3.0.1/js/fullcalendar.min.js',
				charset : 'UTF-8'
			},
			{ 
				path 	:'/core/calendar/3.0.1/js/locale-all.js',
				charset : 'UTF-8'
			},

			{ 
				path : '/core/igrp/table/table.contextmenu.js' 
			},
			
			{ 
				path:'/core/calendar/3.0.1/js/igrp.calendar.js'
			}
		]
	}



	container.setPropriety({
		name:'header',
		label:'Header Views',
		value:{
			value   : '',
			options :[
				{value : 'prev', label : 'Prev'},
				{value : 'title', label : 'Title'},
				{value : 'next', label : 'Next'}
			],
			multiple:true
		}
	});

	container.setPropriety({
		name:'views',
		label:'Views',
		value:{
			value   : '',
			options :[
				{value : 'month', label : 'Month'},
				{value : 'agendaWeek', label : 'Week'},
				{value : 'agendaDay', label : 'Day'},
				{value : 'today', label : 'Today'}
			],
			multiple:true
		}
	});
	
	container.setPropriety({
		name :'weekends',
		label:'Hide Weekends',
		value:false
	});

	container.setPropriety({
		name :'ebeforetoday',
		label:'Event before today',
		value:false
	});
	
	container.setPropriety({
		name:'firstday',
		label:'First day week',
		value:{
			value   : '1',
			options :[
				{value : '-0', label : 'Sunday'},
				{value : '1', label : 'Monday'}
			]
		}
	});
	
	container.setPropriety({
		name:'refreshonedit',
		label:'Refresh Parent when editing events',
		size: 12,
		value:false,
		xslValue:function(){
			
			return '<xsl:with-param name="refreshonedit" select="\'true\'"/>';
		}
	});

	container.onDrawEnd = function(){
		var c  = $.IGRP.components.calendar.get( container.GET.tag());
		if(c){
			c.fullCalendar('render');
   	 		c.fullCalendar('addEventSource',[
				{
					"title"  : "event1",
					"start"  : `${date}T10:00:00`,
					"end"	 : `${date}T12:00:00`,
					"context-param":[],
					"color"  : "#acca57",
					"id"     : 1
				},
				{
					"title"  : "event3",
					"start"  : `${date}T15:00:00`,
					"end"	 : `${date}T17:00:00`,
					"context-param":[],
					"color"  : "#acca69",
					"id"     : 3
				},
				{
					"title"  : "event2",
					"start"  : `${date}T11:00:00`,
					"end"	 : `${date}T15:00:00`,
					"context-param":["p1=linha1","p2=linha1"],
					"color"  : "#aaaB69",
					"id"     : 2
				}
			]);
		}
   	 	
	}
}

this[VARS.name].declareContainer({
	name:'calendar',
	container:GENCALENDAR
});