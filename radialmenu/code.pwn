cef_subscribe("radial:menu:click", "CEF_RadialMenu"); // OnGameModeInit


forward OnCefInitialize(player_id, success);
public OnCefInitialize(player_id, success) {
    if (success == 1) 
	{
	    cef_create_browser(player_id, 1234, "https://iml1nkyy.github.io/sdfsdfsdffdjdsf.github.io/radialmenu/index.html", false, false);
		cef_always_listen_keys(player_id, 1234, true);
        return;
    }
}


forward CEF_RadialMenu(playerid, const argument[]);
public CEF_RadialMenu(playerid, const argument[])
{
	new id, message[64];
	sscanf(argument, "ii", id);
	switch(id)
	{
	    case 1:
		{
            ShowPlayerListOwnbaleCar(playerid, D_FIXCAR); // загрузка тс
            
			cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 2:
		{
			PlayerPassive[playerid] = !PlayerPassive[playerid];
			
			format(message, 64, "Пассивный режим: %d", PlayerPassive[playerid]);
			SCM(playerid, COLOR_YELLOW, message);
			
			cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
	    case 3:
		{
            callcmd::anim(playerid, "");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 4:
		{
            callcmd::stats(playerid);

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 5:
		{
            SCM(playerid, COLOR_YELLOW, "Удостоверение и навыки");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 6:
		{
            SCM(playerid, COLOR_YELLOW, "Лечь спать");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 7:
		{
            SCM(playerid, COLOR_YELLOW, "Надеть маску");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 8:
		{
            SCM(playerid, COLOR_YELLOW, "Съесть еду");
            
            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 9:
		{
            SCM(playerid, COLOR_YELLOW, "Принять вещества");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 10:
		{
            SCM(playerid, COLOR_YELLOW, "Использовать аптечку");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		//--------------------------------------------------------------------------------
		case 11:
		{
            SCM(playerid, COLOR_YELLOW, "Документы на ТС");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 12:
		{
            SCM(playerid, COLOR_YELLOW, "Руководство по эксплуатации");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 13:
		{
            SCM(playerid, COLOR_YELLOW, "Построить маршрут на навигаторе");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 14:
		{
            SCM(playerid, COLOR_YELLOW, "Отбуксировать транспорт");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 15:
		{
            SCM(playerid, COLOR_YELLOW, "Продать транспорт");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 16:
		{
            SCM(playerid, COLOR_YELLOW, "Выгрузить транспорт");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		//--------------------------------------------------------------------------------
		case 17:
		{
            SCM(playerid, COLOR_YELLOW, "Навыки владения оружием");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 18:
		{
            SCM(playerid, COLOR_YELLOW, "Удостоверение развозчика");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 19:
		{
            SCM(playerid, COLOR_YELLOW, "Физические навыки");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
		case 20:
		{
            SCM(playerid, COLOR_YELLOW, "Удостоверение дальнобойщика");

            cef_emit_event(playerid, "radial:menu:visible", CEFINT(false), CEFINT(1));
			cef_focus_browser(playerid, 1234, false);
		}
	}
	return 1;
}

CMD:radial(playerid) {
    cef_focus_browser(playerid, 1234, true);
    cef_emit_event(playerid, "radial:menu:visible", CEFINT(true), CEFINT(1));
    CEF_ShowRadialMenu(playerid);
}

stock CEF_ShowRadialMenu(playerid) {
	//cef_emit_event(playerid, "radial:menu:cars", CEFSTR("uploaded")); // это если машина загружена то кнопка меняется на управление ну как на малине
	cef_emit_event(playerid, "radial:menu:cars", CEFSTR("unloaded")); // а это если не загружена, то возвращается кнопка "Загрузить транспорт"
	
	cef_emit_event(playerid, "radial:menu:passive", CEFINT(PlayerPassive[playerid])); // пассивный режим
	
	cef_emit_event(playerid, "radial:menu:sleep", CEFINT(false), CEFSTR("Вы не можете спать в этой зеленой зоне, выберите другое место"));
	
	new Float:health;
	GetPlayerHealth(playerid, health);
	if(health > 60) {
		cef_emit_event(playerid, "radial:menu:apteka", CEFINT(false), CEFSTR("Вы не нуждаетесь в лечении"));
	}
	else cef_emit_event(playerid, "radial:menu:apteka", CEFINT(true), CEFSTR(""));

    if(!PI[playerid][pDrugs]) {
        cef_emit_event(playerid, "radial:menu:drugs", CEFINT(false), CEFSTR("У Вас нет веществ"));
	} else cef_emit_event(playerid, "radial:menu:drugs", CEFINT(true), CEFSTR(""));


	//cef_emit_event(playerid, "radial:menu:carlocation", CEFINT(false), CEFSTR("Транспорт находится поблизости"));
	//cef_emit_event(playerid, "radial:menu:carlocation", CEFINT(true), CEFSTR(""));
	
	new nickname[32], str_1[128], str_2[128];
	GetPlayerName(playerid, nickname, sizeof(nickname));
	
	format(str_1, 128, "Подключено (52 ms, 0.0% loss)");
	format(str_2, 128, "Подключено (60 ms, 0.0% loss)");
	cef_emit_event(playerid, "radial:menu:info", CEFINT(GetOnlinePlayers()), CEFSTR(nickname), CEFSTR(str_1), CEFSTR(str_2));
	
	cef_emit_event(playerid, "radial:menu:time", CEFINT(52), CEFINT(28), CEFINT(7));// это время в игре, над радаром
 	return 1;
}

stock GetOnlinePlayers() {
    new z;
    for(new i; i<GetMaxPlayers(); i++) if(IsPlayerConnected(i)) z++;
    return z;
}
