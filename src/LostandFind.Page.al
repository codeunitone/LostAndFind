page 50000 "Lost and Find"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(Run)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind();
                end;
            }
        }
    }

    local procedure RunLostAndFind();
    var
        LostAndFind: codeunit 50000;
    begin
        LostAndFind.Run();
    end;
}