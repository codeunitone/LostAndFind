page 50100 "Lost and Find"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(all)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('All');
                end;
            }
            action(IsEmpty)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('IsEmpty');
                end;
            }

            action(Get)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('Get');
                end;
            }

            action(FindFirst)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('FindFirst');
                end;
            }

            action(FindLast)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('FindLast');
                end;
            }

            action(FindSetDefault)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('FindSetDefaultlt');
                end;
            }

            action(FindSetForUpdate)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('FindSetForUpdate');
                end;
            }

            action(FindSetKeyUpdate)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('FindSetKeyUpdate');
                end;
            }

            action(FindSetForUpdateAndKeyUpdate)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('FindSetForUpdateAndKeyUpdate');
                end;
            }

            action(FindMinus)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('FindMinus');
                end;
            }

            action(FindPlus)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    RunLostAndFind('FindPlus');
                end;
            }
        }
    }

    local procedure RunLostAndFind(FunctionName: Text);
    var
        LostAndFind: codeunit 50100;
    begin
        case FunctionName of
            'All':
                LostAndFind.RunAll();
            'IsEmpty':
                LostAndFind.RunIsEmpty();
            'Get':
                LostAndFind.RunGet();
            'FindFirst':
                LostAndFind.RunFindFirst();
            'FindLast':
                LostAndFind.RunFindLast();
            'FindSetDefault':
                LostAndFind.RunFindSetDefault;
            'FindSetForUpdate':
                LostAndFind.RunFindSetForUpdate();
            'FindSetKeyUpdate':
                LostAndFind.RunFindSetKeyUpdate();
            'FindSetForUpdateAndKeyUpdate':
                LostAndFind.RunFindSetForUpdateAndKeyUpdate();
            'FindMinus':
                LostAndFind.RunFindMinus();
            'FindPlus':
                LostAndFind.RunFindPlus();
        end;
    end;
}