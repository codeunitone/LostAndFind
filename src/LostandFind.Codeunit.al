codeunit 50000 "Lost and Find"
{
    trigger OnRun();
    var
        Selection: integer;
        txtSelectionStr: Label 'IsEmpty,Get,FindFirst,FindLast,FindSetDefault,FindSetForUpdate,FindSetKeyUpdate,FindSetForUpdateAndKeyUpdate,FindMinus,FindPlus';
    begin
        Selection := StrMenu(txtSelectionStr);

        case Selection of
            1 : ItemIsEmpty();
            2 : ItemGet();
            3 : ItemFindFirst();
            4 : ItemFindLast();
            5 : ItemFindSetDefault;
            6 : ItemFindSetForUpdate();
            7 : ItemFindSetKeyUpdate();
            8 : ItemFindSetForUpdateAndKeyUpdate();
            9 : ItemFindMinus();
            10 : ItemFindPlus();
        end;
    end;

    local procedure ItemIsEmpty();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        if Item.IsEmpty() then;
    end;

    local procedure ItemGet();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.Get('1000');
    end;

    local procedure ItemFindFirst();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindFirst();
    end;

    local procedure ItemFindLast();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindLast();
    end;

    local procedure ItemFindSetDefault();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindSet();
    end;

    local procedure ItemFindSetForUpdate();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindSet(true, false);
    end;

    local procedure ItemFindSetKeyUpdate();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindSet(false, true);
    end;

    local procedure ItemFindSetForUpdateAndKeyUpdate();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindSet(true, true);
    end;

    local procedure ItemFindMinus();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.Find('-');
    end;

    local procedure ItemFindPlus();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.Find('+');
    end;
}