global function AutoWithdrawSettings_Init

void function AutoWithdrawSettings_Init()
{
	AddModTitle("Auto Withdraw")

	// General
	AddModCategory("General")

	AddConVarSettingEnum("autowithdraw_enable", "Enable Icon Display", [ "No", "Yes" ])
}