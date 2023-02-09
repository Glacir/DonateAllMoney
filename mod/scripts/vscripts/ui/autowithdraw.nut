global function TryToDepositAll

struct
{
    bool DEPOSITING = false
}file

void function DepositAll()
{
    if (file.DEPOSITING)
        return
    file.DEPOSITING = true
    while(GetPlayerMoney(GetUIPlayer()) > 0)
    {
        ClientCommand( "TeamReserveDeposit" )
        wait 0.1
    }
    file.DEPOSITING = false
}

void function TryToDepositAll()
{
    if (!file.DEPOSITING)
        thread DepositAll()
}
