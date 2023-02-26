global function TryToDepositAll

struct
{
    bool DEPOSITING = false
}file

void function DepositAll(void functionref() callback = null)
{
    if (file.DEPOSITING)
        return
    file.DEPOSITING = true
    int money = GetPlayerMoney(GetUIPlayer())
    int times = int(ceil(money / 100.0))
    for (int i = 0; i < times; ++i)
    {
        ClientCommand( "TeamReserveDeposit" )
        EmitUISound( "HUD_MP_BountyHunt_BankBonusPts_Deposit_End_Successful_1P" )
        wait 0.1
    }
    file.DEPOSITING = false
    if (callback != null)
        callback()
}

void function TryToDepositAll(void functionref() callback = null)
{
    if (!file.DEPOSITING)
        thread DepositAll(callback)
}
