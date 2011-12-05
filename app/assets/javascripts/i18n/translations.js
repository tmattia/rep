var I18n = I18n || {};
I18n.translations = {"en":{"date":{"formats":{"default":"%Y-%m-%d","short":"%b %d","long":"%B %d, %Y"},"day_names":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"abbr_day_names":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"month_names":[null,"January","February","March","April","May","June","July","August","September","October","November","December"],"abbr_month_names":[null,"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"order":["year","month","day"]},"time":{"formats":{"default":"%a, %d %b %Y %H:%M:%S %z","short":"%d %b %H:%M","long":"%B %d, %Y %H:%M"},"am":"am","pm":"pm"},"support":{"array":{"words_connector":", ","two_words_connector":" and ","last_word_connector":", and "}},"errors":{"format":"%{attribute} %{message}","messages":{"inclusion":"is not included in the list","exclusion":"is reserved","invalid":"is invalid","confirmation":"doesn't match confirmation","accepted":"must be accepted","empty":"can't be empty","blank":"can't be blank","too_long":"is too long (maximum is %{count} characters)","too_short":"is too short (minimum is %{count} characters)","wrong_length":"is the wrong length (should be %{count} characters)","not_a_number":"is not a number","not_an_integer":"must be an integer","greater_than":"must be greater than %{count}","greater_than_or_equal_to":"must be greater than or equal to %{count}","equal_to":"must be equal to %{count}","less_than":"must be less than %{count}","less_than_or_equal_to":"must be less than or equal to %{count}","odd":"must be odd","even":"must be even"}},"activerecord":{"errors":{"messages":{"taken":"has already been taken","record_invalid":"Validation failed: %{errors}","invalid":"is invalid","invalid_event":"cannot transition when %{state}","invalid_transition":"cannot transition via \"%{event}\""}}},"number":{"format":{"separator":".","delimiter":",","precision":3,"significant":false,"strip_insignificant_zeros":false},"currency":{"format":{"format":"%u%n","unit":"$","separator":".","delimiter":",","precision":2,"significant":false,"strip_insignificant_zeros":false}},"percentage":{"format":{"delimiter":""}},"precision":{"format":{"delimiter":""}},"human":{"format":{"delimiter":"","precision":3,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"kb":"KB","mb":"MB","gb":"GB","tb":"TB"}},"decimal_units":{"format":"%n %u","units":{"unit":"","thousand":"Thousand","million":"Million","billion":"Billion","trillion":"Trillion","quadrillion":"Quadrillion"}}}},"datetime":{"distance_in_words":{"half_a_minute":"half a minute","less_than_x_seconds":{"one":"less than 1 second","other":"less than %{count} seconds"},"x_seconds":{"one":"1 second","other":"%{count} seconds"},"less_than_x_minutes":{"one":"less than a minute","other":"less than %{count} minutes"},"x_minutes":{"one":"1 minute","other":"%{count} minutes"},"about_x_hours":{"one":"about 1 hour","other":"about %{count} hours"},"x_days":{"one":"1 day","other":"%{count} days"},"about_x_months":{"one":"about 1 month","other":"about %{count} months"},"x_months":{"one":"1 month","other":"%{count} months"},"about_x_years":{"one":"about 1 year","other":"about %{count} years"},"over_x_years":{"one":"over 1 year","other":"over %{count} years"},"almost_x_years":{"one":"almost 1 year","other":"almost %{count} years"}},"prompts":{"year":"Year","month":"Month","day":"Day","hour":"Hour","minute":"Minute","second":"Seconds"}},"helpers":{"select":{"prompt":"Please select"},"submit":{"create":"Create %{model}","update":"Update %{model}","submit":"Save %{model}"}},"flash":{"actions":{"create":{"notice":"%{resource_name} was successfully created."},"update":{"notice":"%{resource_name} was successfully updated."},"destroy":{"notice":"%{resource_name} was successfully destroyed.","alert":"%{resource_name} could not be destroyed."}}},"activemodel":{"errors":{"messages":{"invalid":"is invalid","invalid_event":"cannot transition when %{state}","invalid_transition":"cannot transition via \"%{event}\""}}},"hello":"Hello world","show_for":{"blank":"Not specified","yes":"Yes","no":"No"},"simple_form":{"yes":"Yes","no":"No","required":{"text":"required","mark":"*"},"error_notification":{"default_message":"Some errors were found, please take a look:"}}},"pt-BR":{"label":{"add":"Adicionar","all":"Todos","confirm_delete":"Tem certeza de que deseja excluir este item?","dashboard":"Mural","delete":"Excluir","edit":"Editar","no_records":"Nenhum(a) %{model} cadastrado(a).","no_records_found_for_date":"Nenhum(a) %{model} encontrado(a) para a data %{date}.","or":"ou","please_check_fields":"Por favor, verifique se voc\u00ea preencheu todos os campos corretamente.","record_data":"Dados Cadastrais","search":"Buscar","select":"Selecione...","show":"Ver","activity":{"recent":"Atividades Recentes","type":{"create":"cadastrado","finish_draft_and_send":"enviado"}},"carrier":{"plural":"Transportadoras","add":"Adicionar Transportadora","edit":"Editar Transportadora"},"client":{"plural":"Clientes","add":"Adicionar Cliente","edit":"Editar Cliente"},"company":{"plural":"Representadas","add":"Adicionar Representada","edit":"Editar Representada"},"order":{"plural":"Pedidos","add":"Adicionar Pedido","add_items":"Adicionar Itens","add_items_submit":"Adicionar Itens \u00bb","cancel":"Cancelar Pedido","cancelled":"Pedido cancelado com sucesso.","cannot_cancel":"N\u00e3o \u00e9 poss\u00edvel cancelar o pedido neste momento.","cannot_confirm":"N\u00e3o \u00e9 poss\u00edvel confirmar o recebimento do pedido neste momento.","cannot_send":"O pedido deve estar completo para ser enviado. Por favor, verifique se todos os campos foram preenchidos corretamente.","confirm":"Confirmar Recebimento do Pedido","confirm_cancel":"Tem certeza de que deseja cancelar o pedido?","confirmed":"Recebimento de Pedido confirmado com sucesso.","confirm_confirm":"Tem certeza de que deseja confirmar o recebimento do pedido?","confirm_send":"Tem certeza de que deseja enviar o pedido?","edit":"Editar Pedido","payment_comission_and_freightage":"Pagamento, Comiss\u00e3o e Frete","payment_comission_and_freightage_submit":"Pagamento, Comiss\u00e3o e Frete \u00bb","recent":"\u00daltimos Pedidos","search_by_code":"Buscar por C\u00f3digo","send":"Enviar Pedido","sent":"Pedido enviado com sucesso.","status":{"draft":"Rascunho","to_be_confirmed":"Aguarda Confirma\u00e7\u00e3o","confirmed":"Confirmado","rejected":"Recusado","cancelled":"Cancelado"},"total":"Total do Pedido"},"order_item":{"plural":"Itens","add":"Adicionar Item","edit":"Editar Item","save_and_add_another":"Salvar e Adicionar Outro Item"},"product":{"plural":"Produtos","add":"Adicionar Produto","edit":"Editar Produto"}},"flash":{"actions":{"create":{"notice":"%{resource_name} cadastrado(a) com sucesso.","alert":"Ocorreu um erro ao cadastrar %{resource_name}. Por favor, verifique se todos os campos foram preenchidos corretamente."},"update":{"notice":"%{resource_name} editado(a) com sucesso.","alert":"Ocorreu um erro ao editar %{resource_name}. Por favor, verifique se todos os campos foram preenchidos corretamente."},"destroy":{"notice":"%{resource_name} exclu\u00eddo(a) com sucesso.","alert":"N\u00e3o foi poss\u00edvel excluir %{resource_name}."}}},"date":{"formats":{"default":"%d/%m/%Y","short":"%d de %B","long":"%d de %B de %Y"},"day_names":["Domingo","Segunda","Ter\u00e7a","Quarta","Quinta","Sexta","S\u00e1bado"],"abbr_day_names":["Dom","Seg","Ter","Qua","Qui","Sex","S\u00e1b"],"month_names":[null,"Janeiro","Fevereiro","Mar\u00e7o","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"],"abbr_month_names":[null,"Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez"],"order":["day","month","year"]},"time":{"formats":{"default":"%A, %d de %B de %Y, %H:%M h","short":"%d/%m, %H:%M h","long":"%A, %d de %B de %Y, %H:%M h","date":"%d/%m/%Y"},"am":"","pm":""},"support":{"array":{"words_connector":", ","two_words_connector":" e ","last_word_connector":" e "},"select":{"prompt":"Por favor selecione"}},"number":{"format":{"separator":",","delimiter":".","precision":3,"significant":false,"strip_insignificant_zeros":false},"currency":{"format":{"format":"%u%n","unit":"R$","separator":",","delimiter":".","precision":2,"significant":false,"strip_insignificant_zeros":false}},"percentage":{"format":{"delimiter":"."}},"precision":{"format":{"delimiter":"."}},"human":{"format":{"delimiter":".","precision":2,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"kb":"KB","mb":"MB","gb":"GB","tb":"TB"}},"decimal_units":{"format":"%n %u","units":{"unit":"","thousand":"mil","million":{"one":"milh\u00e3o","other":"milh\u00f5es"},"billion":{"one":"bilh\u00e3o","other":"bilh\u00f5es"},"trillion":{"one":"trilh\u00e3o","other":"trilh\u00f5es"},"quadrillion":{"one":"quatrilh\u00e3o","other":"quatrilh\u00f5es"}}}}},"datetime":{"distance_in_words":{"half_a_minute":"meio minuto","less_than_x_seconds":{"one":"menos de 1 segundo","other":"menos de %{count} segundos"},"x_seconds":{"one":"1 segundo","other":"%{count} segundos"},"less_than_x_minutes":{"one":"menos de um minuto","other":"menos de %{count} minutos"},"x_minutes":{"one":"1 minuto","other":"%{count} minutos"},"about_x_hours":{"one":"aproximadamente 1 hora","other":"aproximadamente %{count} horas"},"x_days":{"one":"1 dia","other":"%{count} dias"},"about_x_months":{"one":"aproximadamente 1 m\u00eas","other":"aproximadamente %{count} meses"},"x_months":{"one":"1 m\u00eas","other":"%{count} meses"},"about_x_years":{"one":"aproximadamente 1 ano","other":"aproximadamente %{count} anos"},"over_x_years":{"one":"mais de 1 ano","other":"mais de %{count} anos"},"almost_x_years":{"one":"quase 1 ano","other":"quase %{count} anos"}},"prompts":{"year":"Ano","month":"M\u00eas","day":"Dia","hour":"Hora","minute":"Minuto","second":"Segundo"}},"helpers":{"select":{"prompt":"Por favor selecione"},"submit":{"create":"Salvar","update":"Salvar","submit":"Salvar"}},"errors":{"format":"%{attribute} %{message}","template":{"header":{"one":"N\u00e3o foi poss\u00edvel gravar %{model}: 1 erro","other":"N\u00e3o foi poss\u00edvel gravar %{model}: %{count} erros."},"body":"Por favor, verifique o(s) seguinte(s) campo(s):"},"messages":{"inclusion":"n\u00e3o est\u00e1 inclu\u00eddo na lista","exclusion":"n\u00e3o est\u00e1 dispon\u00edvel","invalid":"n\u00e3o \u00e9 v\u00e1lido","confirmation":"n\u00e3o est\u00e1 de acordo com a confirma\u00e7\u00e3o","accepted":"deve ser aceito","empty":"n\u00e3o pode ficar vazio","blank":"n\u00e3o pode ficar em branco","too_long":"\u00e9 muito longo (m\u00e1ximo: %{count} caracteres)","too_short":"\u00e9 muito curto (m\u00ednimo: %{count} caracteres)","wrong_length":"n\u00e3o possui o tamanho esperado (%{count} caracteres)","not_a_number":"n\u00e3o \u00e9 um n\u00famero","not_an_integer":"n\u00e3o \u00e9 um n\u00famero inteiro","greater_than":"deve ser maior que %{count}","greater_than_or_equal_to":"deve ser maior ou igual a %{count}","equal_to":"deve ser igual a %{count}","less_than":"deve ser menor que %{count}","less_than_or_equal_to":"deve ser menor ou igual a %{count}","odd":"deve ser \u00edmpar","even":"deve ser par"}},"default_attributes":{"carrier":"Transportadora","city":"Cidade","client":"Cliente","cnpj":"CNPJ","code":"C\u00f3digo","color":"Cor","comission":"Comiss\u00e3o","comission_total":"Total de Comiss\u00e3o","company":"Representada","company_name":"Raz\u00e3o Social","created_at":"Data","description":"Descri\u00e7\u00e3o","discount":"Desconto","email":"Email","fax":"Fax","freightage":"Frete","interest":"Juros","msn":"MSN","name":"Nome","observations":"Observa\u00e7\u00f5es","payment":"Prazo de Pagamento","phone":"Telefone","product":"Produto","quantity":"Quantidade","skype":"Skype","state":"Estado","status":"Situa\u00e7\u00e3o","street":"Endere\u00e7o","type_of_freight":"Tipo do Frete","unit_price":"Valor Unit\u00e1rio","zip_code":"CEP"},"activerecord":{"errors":{"template":{"header":{"one":"N\u00e3o foi poss\u00edvel gravar %{model}: 1 erro","other":"N\u00e3o foi poss\u00edvel gravar %{model}: %{count} erros."},"body":"Por favor, verifique o(s) seguinte(s) campo(s):"},"messages":{"taken":"j\u00e1 est\u00e1 em uso","record_invalid":"A valida\u00e7\u00e3o falhou: %{errors}","inclusion":"n\u00e3o est\u00e1 inclu\u00eddo na lista","exclusion":"n\u00e3o est\u00e1 dispon\u00edvel","invalid":"n\u00e3o \u00e9 v\u00e1lido","confirmation":"n\u00e3o est\u00e1 de acordo com a confirma\u00e7\u00e3o","accepted":"deve ser aceito","empty":"n\u00e3o pode ficar vazio","blank":"n\u00e3o pode ficar em branco","too_long":"\u00e9 muito longo (m\u00e1ximo: %{count} caracteres)","too_short":"\u00e9 muito curto (m\u00ednimo: %{count} caracteres)","wrong_length":"n\u00e3o possui o tamanho esperado (%{count} caracteres)","not_a_number":"n\u00e3o \u00e9 um n\u00famero","not_an_integer":"n\u00e3o \u00e9 um n\u00famero inteiro","greater_than":"deve ser maior que %{count}","greater_than_or_equal_to":"deve ser maior ou igual a %{count}","equal_to":"deve ser igual a %{count}","less_than":"deve ser menor que %{count}","less_than_or_equal_to":"deve ser menor ou igual a %{count}","odd":"deve ser \u00edmpar","even":"deve ser par"},"full_messages":{"format":"%{attribute} %{message}"}},"attributes":{"activity":{"carrier":"Transportadora","city":"Cidade","client":"Cliente","cnpj":"CNPJ","code":"C\u00f3digo","color":"Cor","comission":"Comiss\u00e3o","comission_total":"Total de Comiss\u00e3o","company":"Representada","company_name":"Raz\u00e3o Social","created_at":"Data","description":"Descri\u00e7\u00e3o","discount":"Desconto","email":"Email","fax":"Fax","freightage":"Frete","interest":"Juros","msn":"MSN","name":"Nome","observations":"Observa\u00e7\u00f5es","payment":"Prazo de Pagamento","phone":"Telefone","product":"Produto","quantity":"Quantidade","skype":"Skype","state":"Estado","status":"Situa\u00e7\u00e3o","street":"Endere\u00e7o","type_of_freight":"Tipo do Frete","unit_price":"Valor Unit\u00e1rio","zip_code":"CEP"},"carrier":{"carrier":"Transportadora","city":"Cidade","client":"Cliente","cnpj":"CNPJ","code":"C\u00f3digo","color":"Cor","comission":"Comiss\u00e3o","comission_total":"Total de Comiss\u00e3o","company":"Representada","company_name":"Raz\u00e3o Social","created_at":"Data","description":"Descri\u00e7\u00e3o","discount":"Desconto","email":"Email","fax":"Fax","freightage":"Frete","interest":"Juros","msn":"MSN","name":"Nome","observations":"Observa\u00e7\u00f5es","payment":"Prazo de Pagamento","phone":"Telefone","product":"Produto","quantity":"Quantidade","skype":"Skype","state":"Estado","status":"Situa\u00e7\u00e3o","street":"Endere\u00e7o","type_of_freight":"Tipo do Frete","unit_price":"Valor Unit\u00e1rio","zip_code":"CEP"},"client":{"carrier":"Transportadora","city":"Cidade","client":"Cliente","cnpj":"CNPJ","code":"C\u00f3digo","color":"Cor","comission":"Comiss\u00e3o","comission_total":"Total de Comiss\u00e3o","company":"Representada","company_name":"Raz\u00e3o Social","created_at":"Data","description":"Descri\u00e7\u00e3o","discount":"Desconto","email":"Email","fax":"Fax","freightage":"Frete","interest":"Juros","msn":"MSN","name":"Nome","observations":"Observa\u00e7\u00f5es","payment":"Prazo de Pagamento","phone":"Telefone","product":"Produto","quantity":"Quantidade","skype":"Skype","state":"Estado","status":"Situa\u00e7\u00e3o","street":"Endere\u00e7o","type_of_freight":"Tipo do Frete","unit_price":"Valor Unit\u00e1rio","zip_code":"CEP"},"company":{"carrier":"Transportadora","city":"Cidade","client":"Cliente","cnpj":"CNPJ","code":"C\u00f3digo","color":"Cor","comission":"Comiss\u00e3o","comission_total":"Total de Comiss\u00e3o","company":"Representada","company_name":"Raz\u00e3o Social","created_at":"Data","description":"Descri\u00e7\u00e3o","discount":"Desconto","email":"Email","fax":"Fax","freightage":"Frete","interest":"Juros","msn":"MSN","name":"Nome","observations":"Observa\u00e7\u00f5es","payment":"Prazo de Pagamento","phone":"Telefone","product":"Produto","quantity":"Quantidade","skype":"Skype","state":"Estado","status":"Situa\u00e7\u00e3o","street":"Endere\u00e7o","type_of_freight":"Tipo do Frete","unit_price":"Valor Unit\u00e1rio","zip_code":"CEP"},"order":{"carrier":"Transportadora","city":"Cidade","client":"Cliente","cnpj":"CNPJ","code":"C\u00f3digo","color":"Cor","comission":"Comiss\u00e3o","comission_total":"Total de Comiss\u00e3o","company":"Representada","company_name":"Raz\u00e3o Social","created_at":"Data","description":"Descri\u00e7\u00e3o","discount":"Desconto","email":"Email","fax":"Fax","freightage":"Frete","interest":"Juros","msn":"MSN","name":"Nome","observations":"Observa\u00e7\u00f5es","payment":"Prazo de Pagamento","phone":"Telefone","product":"Produto","quantity":"Quantidade","skype":"Skype","state":"Estado","status":"Situa\u00e7\u00e3o","street":"Endere\u00e7o","type_of_freight":"Tipo do Frete","unit_price":"Valor Unit\u00e1rio","zip_code":"CEP"},"order_item":{"carrier":"Transportadora","city":"Cidade","client":"Cliente","cnpj":"CNPJ","code":"C\u00f3digo","color":"Cor","comission":"Comiss\u00e3o","comission_total":"Total de Comiss\u00e3o","company":"Representada","company_name":"Raz\u00e3o Social","created_at":"Data","description":"Descri\u00e7\u00e3o","discount":"Desconto","email":"Email","fax":"Fax","freightage":"Frete","interest":"Juros","msn":"MSN","name":"Nome","observations":"Observa\u00e7\u00f5es","payment":"Prazo de Pagamento","phone":"Telefone","product":"Produto","quantity":"Quantidade","skype":"Skype","state":"Estado","status":"Situa\u00e7\u00e3o","street":"Endere\u00e7o","type_of_freight":"Tipo do Frete","unit_price":"Valor Unit\u00e1rio","zip_code":"CEP"},"product":{"carrier":"Transportadora","city":"Cidade","client":"Cliente","cnpj":"CNPJ","code":"C\u00f3digo","color":"Cor","comission":"Comiss\u00e3o","comission_total":"Total de Comiss\u00e3o","company":"Representada","company_name":"Raz\u00e3o Social","created_at":"Data","description":"Descri\u00e7\u00e3o","discount":"Desconto","email":"Email","fax":"Fax","freightage":"Frete","interest":"Juros","msn":"MSN","name":"Nome","observations":"Observa\u00e7\u00f5es","payment":"Prazo de Pagamento","phone":"Telefone","product":"Produto","quantity":"Quantidade","skype":"Skype","state":"Estado","status":"Situa\u00e7\u00e3o","street":"Endere\u00e7o","type_of_freight":"Tipo do Frete","unit_price":"Valor Unit\u00e1rio","zip_code":"CEP"}},"models":{"activity":"Atividade","carrier":"Transportadora","client":"Cliente","company":"Representada","order":"Pedido","order_item":"Item","product":"Produto"}},"show_for":{"blank":"N\u00e3o informado","yes":"Sim","no":"N\u00e3o"},"simple_form":{"yes":"Sim","no":"N\u00e3o","required":{"text":"obrigat\u00f3rio","mark":"*"}},"states_collection":{"AC":"Acre","AL":"Alagoas","AM":"Amazonas","AP":"Amap\u00e1","BA":"Bahia","CE":"Cear\u00e1","DF":"Distrito Federal","ES":"Esp\u00edrito Santo","GO":"Goi\u00e1s","MA":"Maranh\u00e3o","MG":"Minas Gerais","MS":"Mato Grosso do Sul","MT":"Mato Grosso","PA":"Par\u00e1","PB":"Para\u00edba","PE":"Pernambuco","PI":"Piau\u00ed","PR":"Paran\u00e1","RJ":"Rio de Janeiro","RN":"Rio Grande do Norte","RR":"Roraima","RO":"Rond\u00f4nia","RS":"Rio Grande do Sul","SC":"Santa Catarina","SE":"Sergipe","SP":"S\u00e3o Paulo","TO":"Tocantins"}}};