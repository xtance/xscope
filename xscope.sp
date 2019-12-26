#define crosshair "+" //×
#define color {0,255,0,255}

public Action OnPlayerRunCmd(int iClient, int &buttons, int &impulse, float vel[3], float angles[3]){
	if (GetEntProp(iClient, Prop_Send, "m_bIsScoped")){
		SetEntProp(iClient, Prop_Data, "m_iHideHUD", 2052);
		SetHudTextParamsEx(-1.0, -1.0, 1.1, color, color, 1, 10.0, 0.0, 0.0);
		ShowHudText(iClient, 2, crosshair);
	} else {
		SetEntProp(iClient, Prop_Data, "m_iHideHUD", 2050);
	}
	return Plugin_Continue;
}
