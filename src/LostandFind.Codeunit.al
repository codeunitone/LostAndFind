codeunit 50100 "Lost and Find"
{
    procedure RunAll();
    begin
        RunIsEmpty();
        RunGet();
        RunFindFirst();
        RunFindLast();
        RunFindSetDefault;
        RunFindSetForUpdate();
        RunFindSetKeyUpdate();
        RunFindSetForUpdateAndKeyUpdate();
        RunFindMinus();
        RunFindPlus();
    end;

    procedure RunIsEmpty();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        if Item.IsEmpty() then;
    end;

    procedure RunGet();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.Get('1000');
    end;

    procedure RunFindFirst();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindFirst();
    end;

    procedure RunFindLast();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindLast();
    end;

    procedure RunFindSetDefault();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindSet();
    end;

    procedure RunFindSetForUpdate();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindSet(true, false);
    end;

    procedure RunFindSetKeyUpdate();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindSet(false, true);
    end;

    procedure RunFindSetForUpdateAndKeyUpdate();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.FindSet(true, true);
    end;

    procedure RunFindMinus();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.Find('-');
    end;

    procedure RunFindPlus();
    var
        Item: Record Item;
    begin
        SelectLatestVersion();

        Item.Find('+');
    end;
}