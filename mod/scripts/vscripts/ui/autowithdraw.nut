global function DepositAll

void function DepositAll()
{
    while(GetPlayerMoney(GetUIPlayer()) > 0)
    {
        ClientCommand( "TeamReserveDeposit" )
        WaitFrame()
    }
}

}
