codeunit 61900 "NXN Shortys Events"
{
    trigger OnRun()
    begin

    end;



    [EventSubscriber(ObjectType::Page, Page::"Sales Order Subform", 'OnAfterValidateEvent', 'No.', true, true)]
    local procedure "Sales Order Subform_OnAfterValidate_No"(VAR Rec: Record "Sales Line"; VAR xRec: Record "Sales Line")
    var
        SKU: Record "Stockkeeping Unit";
        SL: Record "Sales Line";
        Item: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then begin
            if SKU.Get(Rec."Location Code", Rec."No.", Rec."Variant Code") then
                Rec."Purchasing Code" := SKU."NXN DropShip Purchase Code"
            else
                if Item.Get(Rec."No.") then
                    Rec."Purchasing Code" := Item."Purchasing Code";
        end;
    end;

    [EventSubscriber(ObjectType::Page, Page::"Sales Order Subform", 'OnAfterValidateEvent', 'Location Code', true, true)]
    local procedure "Sales Order Subform_OnAfterValidate_LocCode"(VAR Rec: Record "Sales Line"; VAR xRec: Record "Sales Line")
    var
        SKU: Record "Stockkeeping Unit";
        SL: Record "Sales Line";
        Item: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then begin
            if SKU.Get(Rec."Location Code", Rec."No.", Rec."Variant Code") then
                Rec."Purchasing Code" := SKU."NXN DropShip Purchase Code"
            else
                if Item.Get(Rec."No.") then
                    Rec."Purchasing Code" := Item."Purchasing Code";
        end;
    end;

    [EventSubscriber(ObjectType::Page, Page::"Sales Order Subform", 'OnAfterValidateEvent', 'Variant Code', true, true)]
    local procedure "Sales Order Subform_OnAfterValidate_VarCode"(VAR Rec: Record "Sales Line"; VAR xRec: Record "Sales Line")
    var
        SKU: Record "Stockkeeping Unit";
        SL: Record "Sales Line";
        Item: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then begin
            if SKU.Get(Rec."Location Code", Rec."No.", Rec."Variant Code") then
                Rec."Purchasing Code" := SKU."NXN DropShip Purchase Code"
            else
                if Item.Get(Rec."No.") then
                    Rec."Purchasing Code" := Item."Purchasing Code";
        end;
    end;

    // [EventSubscriber(ObjectType::Page, Page::"Sales Order", 'OnBeforeActionEvent', 'Release', true, true)]
    // local procedure SalesOrderRelease(VAR Rec: Record "Sales Header")
    // var
    //     Text001: Label 'The customer %1 requires a genuine Order Reference No. Please ensure that the Ext. Document No.: %2  is a genuine Order Reference No. ?';
    //     CustRec: Record Customer;
    // begin
    //     if CustRec.get(rec."Sell-to Customer No.") then begin
    //         if CustRec."Ext. Doc. No. Mandatory" then
    //             Message(Text001, rec."Sell-to Customer No.", Rec."External Document No.")
    //     end;
    // end;

    [EventSubscriber(ObjectType::Table, 36, 'OnAfterValidateEvent', 'Sell-to Customer No.', true, true)]
    local procedure SalesOrderOnValidateNo(VAR Rec: Record "Sales Header")
    var
        CustRec: Record Customer;
        OStream: OutStream;
    begin
        if CustRec.get(rec."Sell-to Customer No.") then begin
            rec."Delivery Instructions" := CustRec."Delivery Instructions";
            rec."Work Description".CreateOutStream(OStream);
            OStream.WriteText(CustRec."Transaction Reminder");
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"NXN Export to Excel Mgt", 'OnBeforeExportExcel', '', false, false)]
    procedure GetBookName(VAR BookName: Text; custrec: Record Customer)
    var
        companyInfo: Record "Company Information";
    begin
        if companyInfo."NXN EDI Company Initial" <> '' then
            BookName := companyInfo."NXN EDI Company Initial" + '_' + 'ExcelOrder' + '_' + CustRec."No." + '_' + format(Today);

        if (BookName = '') and (STRPOS(CompanyInfo.Name, 'Wholesale') > 0) then
            BookName := 'SW' + '_' + 'ExcelOrder' + '_' + CustRec."No." + '_' + format(Today);
        if (BookName = '') and (STRPOS(CompanyInfo.Name, 'Liquor') > 0) then
            BookName := 'SL' + '_' + 'ExcelOrder' + '_' + CustRec."No." + '_' + format(Today);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"NXN DRM Management", 'OnBeforeInsertManifestLinesFromSalesHdr', '', false, false)]
    local procedure UpdateDeliveryInstoMF(var ManifestLine: Record "NXN Manifest Line"; SalesHdr: Record "Sales Header")
    begin
        ManifestLine."NXN Delivery Instruction" := SalesHdr."Delivery Instructions";
        ManifestLine."NXN Add.order Instruction" := SalesHdr."Web Order Comments";
        IF SalesHdr."Delivery Instructions" = '' then begin
            IF SalesHdr."NXN EDI Del. Instr." <> '' then
                ManifestLine."NXN Delivery Instruction" := SalesHdr."NXN EDI Del. Instr.";
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"NXN Intercompany Mgt", 'OnUpdatingFromSalesHdrToICSalesHeader', '', false, false)]
    procedure updateInfoICSalesHdr(var ToSalesHdr: Record "Sales Header"; ICSalesHdr: Record "Sales Header")
    begin
        ToSalesHdr."Delivery Instructions" := ICSalesHdr."Delivery Instructions";
        ToSalesHdr."Web Order Comments" := ICSalesHdr."Web Order Comments";
        ToSalesHdr."NXN EDI Del. Instr." := ICSalesHdr."NXN EDI Del. Instr.";
    end;

    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeManualReleaseSalesDoc', '', false, false)]
    // local procedure ReferenceNoWarning(var SalesHeader: Record "Sales Header"; PreviewMode: Boolean)
    // var
    //     Text001: Label 'The customer %1 requires a genuine Order Reference No. Please ensure that the Ext. Document No.: %2  is a genuine Order Reference No. ?';
    //     Cust: Record Customer;
    // begin
    //     if Cust.get(SalesHeader."Sell-to Customer No.") then begin
    //         if Cust."Ext. Doc. No. Mandatory" then
    //             Message(Text001, SalesHeader."Sell-to Customer No.", SalesHeader."External Document No.")
    //     end;
    // end;

}