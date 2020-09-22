report 61906 "NXN-SLSales Order Confirmation"
{
    // <changelog>
    //   <change id="AP0090" dev="AUGMENTUM" date="2008-06-02" area="N/A"
    //    baseversion="AP4.00.01" releaseversion="AP6.00" feature="NAVCORS22793">
    //    Report Transformation - localized Report Layout.</change>
    // </changelog>
    DefaultLayout = RDLC;
    RDLCLayout = './Rep61906.NXN-SLSalesOrderConfirmation.rdl';

    Caption = 'Sales - Order';
    Permissions = TableData 7190 = rimd;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("No.")
                                WHERE("Document Type" = CONST(Order));
            RequestFilterFields = "No.", "Sell-to Customer No.";
            RequestFilterHeading = 'Sales Order';
            column(No_SalesInvHeader; "No.")
            {
            }
            column(VATPercentCaption; VATPercentCaptionLbl)
            {
            }
            column(VATBaseCaption; VATBaseCaptionLbl)
            {
            }
            column(VATAmountCaption; VATAmountCaptionLbl)
            {
            }
            column(VATAmountSpecificationCaption; VATAmountSpecificationCaptionLbl)
            {
            }
            column(VATIdentifierCaption; VATIdentifierCaptionLbl)
            {
            }
            column(InvDiscBaseAmountCaption; InvDiscBaseAmountCaptionLbl)
            {
            }
            column(LineAmountCaption; LineAmountCaptionLbl)
            {
            }
            column(InvoiceDiscountAmountCaption; InvoiceDiscountAmountCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Header_Amount_Excl_GST; "Sales Header".Amount)
            {
            }
            column(Header_Amount_Incl_GST; "Sales Header"."Amount Including VAT")
            {
            }
            column(Foreign_Currency; "Sales Header"."Currency Code")
            {
            }
            column(External_Doc_No; "Sales Header"."External Document No.")
            {
            }
            column(ML_Picture; CompanyPic.Picture)
            {
            }
            column(Sales_Due_Date; FORMAT("Sales Header"."Due Date", 0, '<Day> <Month text,3> <Year4>'))
            {
            }
            column(Sales_Shipment_Date; FORMAT("Sales Header"."Shipment Date", 0, '<Day> <Month text,3> <Year4>'))
            {
            }
            column(Sales_Shipment_Methods; "Sales Header"."Shipment Method Code")
            {
            }

            column(Sales_Posting_Date; FORMAT("Sales Header"."Posting Date", 0, '<Day> <Month text,3> <Year4>'))
            {
            }
            column(SelltoCustomerNo_SalesInvHeader; "Sales Header"."Sell-to Customer No.")
            {
            }
            column(ShipToAddr1; ShipToAddr[1])
            {
            }
            column(ShipToAddr2; ShipToAddr[2])
            {
            }
            column(ShipToAddr3; ShipToAddr[3])
            {
            }
            column(ShipToAddr4; ShipToAddr[4])
            {
            }
            column(ShipToAddr5; ShipToAddr[5])
            {
            }
            column(ShipToAddr6; ShipToAddr[6])
            {
            }
            column(ShipToAddr7; ShipToAddr[7])
            {
            }
            column(ShipToAddr8; ShipToAddr[8])
            {
            }
            column(ShiptoAddressCaption; ShiptoAddressCaptionLbl)
            {
            }
            column(SelltoCustomerNo_SalesInvHeaderCaption; "Sales Header".FIELDCAPTION("Sell-to Customer No."))
            {
            }
            column(Estimated_Delivery_Date; Format("Sales Header"."Requested Delivery Date"))
            {

            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(CompInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(CompInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompInfoPicture; CompanyInfo.Picture)
                    {
                    }
                    column(DocCaptionCopyText; STRSUBSTNO(DocumentCaption, CopyText))
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompAddr1; CompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompAddr2; CompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompAddr3; CompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompAddr4; CompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CompInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(ShipMethodDesc; ShipmentMethod.Description)
                    {
                    }
                    column(PaymentTermsDesc; PaymentTerms.Description)
                    {
                    }
                    column(CompInfoVATRegsNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompInfoBankAccNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompInfoBSB; CompanyInfo."Bank Branch No.")
                    {
                    }
                    column(BilltoCustNo_SalesInvHeader; "Sales Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostingDt_SalesInvHeader; "Sales Header"."Posting Date")
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegsNo_SalesInvHeader; "Sales Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHeader; "Sales Header"."Due Date")
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(SalesInvHeaderNo1; "Sales Header"."No.")
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(SalesInvHeaderYourReference; "Sales Header"."Your Reference")
                    {
                    }
                    column(OrderNoText; OrderNoText)
                    {
                    }
                    column(OrderNo_SalesInvHdr; '')
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompAddr6; CompanyAddr[6])
                    {
                    }
                    column(DocumentDate04_SalesInvHeader; "Sales Header"."Document Date")
                    {
                    }
                    column(PricesIncludVAT_SalesInvHdr; "Sales Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo; FORMAT("Sales Header"."Prices Including VAT"))
                    {
                    }
                    column(PageCaption; STRSUBSTNO(Text005, ''))
                    {
                    }
                    column(FormatAddrPrintBarCode1; FormatAddr.PrintBarCode(1))
                    {
                    }
                    column(CompInfoABNDivPartNo; CompanyInfo."ABN Division Part No.")
                    {
                    }
                    column(CompInfoABN; NZABNNO)
                    {
                    }
                    column(DocumentDateCaption; DocumentDateCaptionLbl)
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption; BankNameCaptionLbl)
                    {
                    }
                    column(BankAccountNoCaption; BankAccountNoCaptionLbl)
                    {
                    }
                    column(DueDateCaption; DueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption; InvoiceNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption; PostingDateCaptionLbl)
                    {
                    }
                    column(ABNCaption; NZABNNOCaption)
                    {
                    }
                    column(DivisionPartNoCaption; DivisionPartNoCaptionLbl)
                    {
                    }
                    column(PaymentTermsDescriptionCaption; PaymentTermsDescriptionCaptionLbl)
                    {
                    }
                    column(ShipmentMethodDescriptionCaption; ShipmentMethodDescriptionCaptionLbl)
                    {
                    }
                    column(HomePageCaption; HomePageCaptionLbl)
                    {
                    }
                    column(EmailIdCaption; EmailIdCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesInvHeaderCaption; "Sales Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesIncludVAT_SalesInvHdrCaption; "Sales Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(NewCompany_Address; CompanyInfo4.Address)
                    {
                    }
                    column(NewCompany_Postcode; CompanyInfo4."Post Code")
                    {
                    }
                    column(NewCompany_State; CompanyInfo4.County)
                    {
                    }
                    column(NewCompany_City; CompanyInfo4.City)
                    {
                    }
                    column(NewCompany_PhoneNo; CompanyInfo4."Phone No.")
                    {
                    }
                    column(NewCompany_FaxNo; CompanyInfo4."Fax No.")
                    {
                    }
                    column(NewCompany_Homepage; CompanyInfo4."Home Page")
                    {
                    }
                    column(NewCompany_Name; CompanyInfo4.Name)
                    {
                    }
                    column(Company_FaxNo; CompanyInfo."Fax No.")
                    {
                    }
                    column(Company_BankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(Company_Email; CompanyInfo."E-Mail")
                    {
                    }
                    column(Customer_ABN; Cust.ABN)
                    {
                    }
                    column(Company_Country; CompanyInfo."Country/Region Code")
                    {
                    }
                    column(Company_Country_Name; CountryName.Name)
                    {
                    }
                    column(InvoiceNote; CustomTxt)
                    {
                    }
                    column(GSTWEGCaption; GSTWEGCaption)
                    {

                    }
                    column(Winelogovisible; Winelogovisible)
                    {

                    }
                    column(Winepicture; Companyinfo."NXN Wine Logo")
                    {

                    }

                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(Number1_IntergerLine; DimensionLoop1.Number)
                        {
                        }
                        column(HeaderDimensionsCaption; HeaderDimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FINDSET THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(LineDiscAmount; "Sales Line"."Line Discount Amount")
                        {
                        }
                        column(UoM; "Sales Line"."Unit of Measure Code")
                        {
                        }
                        // column(RW_Item; "Sales Line"."Random Weight")
                        // {
                        // }
                        // column(RW_Qty; "Sales Line"."Order Qty. Invoiced")
                        // {
                        //     DecimalPlaces = 0 : 0;
                        // }
                        // column(RW_UoM; "Sales Line"."Order UOM")
                        // {
                        // }
                        column(LineAmt_SalesInvLine; "Sales Line"."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Desc_SalesInvLine; Description)
                        {
                        }
                        column(No_SalesInvLine; "No.")
                        {
                        }
                        column(No_SalesInvLineCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Qty_SalesInvLine; Quantity)
                        {
                        }
                        column(UnitMeasure_SalesInvLine; "Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesInvLine; UnitPrice)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDiscount_SalesInvLine; "Line Discount %")
                        {
                        }
                        column(VATIdentifier_SalesInvLine; "VAT Identifier")
                        {
                        }
                        column(PostedShipDt_SalesInvLine; PostedShipmentDate)
                        {
                        }
                        column(SalesLineType_SalesInvLine; FORMAT("Sales Line".Type))
                        {
                        }
                        column(InvDiscountAmt_SalesInvLine; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal_SalesInvLine; TotalSubTotal)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvDiscountAmt_SalesInvLine; TotalInvoiceDiscountAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText_SalesInvLine; TotalText)
                        {
                        }
                        column(Amount__SalesInvLine; Amount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmount__SalesInvLine; TotalAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AmtIncludVATAmt; "Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AmtIncludVAT_SalesInvLine; "Amount Including VAT")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(TotalAmtInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmtVAT; TotalAmountVAT)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr; "Sales Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDisOnVAT; TotalPaymentDiscountOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(SalesInvHeaderCurrFactor; "Sales Header"."Currency Factor")
                        {
                        }
                        column(TotalExclVATTextLCY; TotalExclVATTextLCY)
                        {
                        }
                        column(TotalInclVATTextLCY; TotalInclVATTextLCY)
                        {
                        }
                        column(AmtIncLCYAmtLCY; AmountIncLCY - AmountLCY)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AmtIncLCY; AmountIncLCY)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AmtLCY; AmountLCY)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(CurrLCY; CurrencyLCY)
                        {
                        }
                        column(CurrCode_SalesInvHeader; "Sales Header"."Currency Code")
                        {
                        }
                        column(AmtLangB1AmtLangB2; AmountLangB[1] + ' ' + AmountLangB[2])
                        {
                            AutoFormatType = 1;
                        }
                        column(AmtLangA1AmtLangA2; AmountLangA[1] + ' ' + AmountLangA[2])
                        {
                            AutoFormatType = 1;
                        }
                        column(AmtInWords; AmountInWords)
                        {
                        }
                        column(SalesInvLineLineNo; "Line No.")
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscountPercentCaption; DiscountPercentCaptionLbl)
                        {
                        }
                        column(AmountCaption; AmountCaptionLbl)
                        {
                        }
                        column(PostedShipmentDateCaption; PostedShipmentDateCaptionLbl)
                        {
                        }
                        column(InvDiscountAmountCaption; InvDiscountAmountCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(PaymentDiscountonVATCaption; PaymentDiscountonVATCaptionLbl)
                        {
                        }
                        column(ExchangeRateCaption; ExchangeRateCaptionLbl)
                        {
                        }
                        column(Desc_SalesInvLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(Qty_SalesInvLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UnitMeasure_SalesInvLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(GST_Percent; "Sales Line"."VAT %")
                        {
                        }
                        column(VATIdentifier_SalesInvLineCaption; FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        // column(WarehouseClassCode; "Sales Line"."Warehouse Class Code-NXN")
                        // {
                        // }
                        // column(WarehouseClassSortOrder; "Sales Line"."Warehouse Class Sort Order-NXN")
                        // {
                        // }
                        column(ItemBrand; Brand)
                        {
                        }
                        column(ItemMFCode; MFCode)
                        {
                        }
                        // column(Substitute_For; "Sales Line"."Original Item No.")
                        // {
                        // }
                        dataitem("Sales Shipment Buffer"; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(SalesShipBufferPostingDt; SalesShipmentBuffer."Posting Date")
                            {
                            }
                            column(SalesShipBufferQty; SalesShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(ShipmentCaption; ShipmentCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN
                                    SalesShipmentBuffer.FIND('-')
                                ELSE
                                    SalesShipmentBuffer.NEXT;
                            end;

                            trigger OnPreDataItem()
                            begin
                                SalesShipmentBuffer.SETRANGE("Document No.", "Sales Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE("Line No.", "Sales Line"."Line No.");

                                SETRANGE(Number, 1, SalesShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimTextCtrl82; DimText)
                            {
                            }
                            column(LineDimensionsCaption; LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDSET THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Sales Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; Integer)
                        {
                            column(PostedAsmMeasureCode; GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                                //DecimalPlaces = 0 : 5;
                            }
                            column(PostedAsmLineQty; TempPostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(PostedAsmLineVarCode; BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                                //DecimalPlaces = 0 : 5;
                            }
                            column(PostedAsmLineDesc; BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(PostedAsmLineNo; BlanksForIndent + TempPostedAsmLine."No.")
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN
                                    TempPostedAsmLine.FINDSET
                                ELSE
                                    TempPostedAsmLine.NEXT;
                            end;

                            trigger OnPreDataItem()
                            begin
                                CLEAR(TempPostedAsmLine);
                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK;
                                CollectAsmInformation;
                                CLEAR(TempPostedAsmLine);
                                SETRANGE(Number, 1, TempPostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            PostedShipmentDate := 0D;
                            IF Quantity <> 0 THEN
                                PostedShipmentDate := FindPostedShipmentDate;

                            IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "No." := '';
                            IF "Line Discount %" <> 0 THEN
                                UnitPrice := ROUND("Unit Price" * (100 - "Line Discount %") / 100, 0.01)
                            ELSE
                                UnitPrice := "Unit Price";
                            VATAmountLine.INIT;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";
                            IF "Allow Invoice Disc." THEN
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine.InsertLine;

                            TotalSubTotal += "Line Amount";
                            TotalInvoiceDiscountAmount -= "Inv. Discount Amount";
                            TotalAmount += Amount;
                            TotalAmountVAT += "Amount Including VAT" - Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalPaymentDiscountOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                            // IF Type = Type::"G/L Account" THEN BEGIN
                            //     "Warehouse Class Sort Order-NXN" := 99;
                            // END;
                            // IF Type = Type::Item THEN BEGIN
                            //     IF Item.GET("Sales Line"."No.") THEN BEGIN
                            //         Brand := Item.Brand_NXN;
                            //         MFCode := Item."Manufacturer Code";
                            //     END ELSE BEGIN
                            //         Brand := '';
                            //         MFCode := '';
                            //     END;
                            // END
                        end;

                        trigger OnPreDataItem()
                        begin
                            StarSign := '';
                            TotalStarSign := '';
                            VATAmountLine.DELETEALL;
                            SalesShipmentBuffer.RESET;
                            SalesShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                            //CurrReport.CREATETOTALS("Line Amount", Amount, "Amount Including VAT", "Inv. Discount Amount");
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATBase_VATAmtLine; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmt_VATAmtLine; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmt_VATAmtLine; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscBaseAmt_VATAmtLine; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscAmt_VATAmtLine; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VAT_VATAmtLine; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIdentifier_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            //CurrReport.CREATETOTALS(
                            //VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                            //VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VatCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHdr; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmtLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATCtrl164_VATAmtLine; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIndCtrl_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);

                            VALVATBaseLCY := ROUND(VATAmountLine."VAT Base" / "Sales Header"."Currency Factor");
                            VALVATAmountLCY := ROUND(VATAmountLine."VAT Amount" / "Sales Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Header"."Currency Code" = '')
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            //CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text007 + Text008
                            ELSE
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Header"."Posting Date", "Sales Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Sales Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text009, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));

                        trigger OnPreDataItem()
                        begin
                            //IF NOT ShowShippingAddr THEN
                            //  CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText := Text003;
                        OutputNo += 1;
                    END;
                    //CurrReport.PAGENO := 1;

                    TotalSubTotal := 0;
                    TotalInvoiceDiscountAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalPaymentDiscountOnVAT := 0;
                end;

                trigger OnPostDataItem()
                begin
                    //IF NOT CurrReport.PREVIEW THEN
                    //SalesInvCountPrinted.RUN("Sales Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CurrReport.LANGUAGE := Language.GetLanguageIdOrDefault("Language Code");

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE BEGIN
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                END;

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                // IF "Order No." = '' THEN
                //  OrderNoText := ''
                // ELSE
                //OrderNoText := FIELDCAPTION("Order No.");
                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    SalesPersonText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;
                IF "Your Reference" = '' THEN
                    ReferenceText := ''
                ELSE
                    ReferenceText := FIELDCAPTION("Your Reference");
                IF "VAT Registration No." = '' THEN
                    VATNoText := ''
                ELSE
                    VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text001, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text002, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text006, GLSetup."LCY Code");
                END ELSE BEGIN
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text002, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text006, "Currency Code");
                    TotalInclVATTextLCY := STRSUBSTNO(Text002, GLSetup."LCY Code");
                    TotalExclVATTextLCY := STRSUBSTNO(Text006, GLSetup."LCY Code");
                END;
                FormatAddr.SalesHeaderBillTo(CustAddr, "Sales Header");
                IF NOT Cust.GET("Bill-to Customer No.") THEN
                    CLEAR(Cust);

                IF "Payment Terms Code" = '' THEN
                    PaymentTerms.INIT
                ELSE BEGIN
                    PaymentTerms.GET("Payment Terms Code");
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                END;
                IF "Shipment Method Code" = '' THEN
                    ShipmentMethod.INIT
                ELSE BEGIN
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                END;
                FormatAddr.SalesHeaderShipTo(ShipToAddr, CustAddr, "Sales Header");
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                    IF ShipToAddr[i] <> CustAddr[i] THEN
                        ShowShippingAddr := TRUE;

                CALCFIELDS(Amount);
                CALCFIELDS("Amount Including VAT");

                AmountLCY :=
                  ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      WORKDATE, "Currency Code", Amount, "Currency Factor"));
                AmountIncLCY :=
                  ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      WORKDATE, "Currency Code", "Amount Including VAT", "Currency Factor"));
                SalesLine.InitTextVariable;
                SalesLine.FormatNoText(AmountLangA, "Amount Including VAT", "Currency Code");
                IF ShowTHFormatting THEN BEGIN
                    SalesLine.InitTextVariableTH;
                    SalesLine.FormatNoTextTH(AmountLangB, "Amount Including VAT", "Sales Header"."Currency Code");
                END ELSE BEGIN
                    AmountLangB[1] := '';
                    AmountLangB[2] := '';
                END;

                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN BEGIN
                        IF "Bill-to Contact No." <> '' THEN
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '')
                        ELSE
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Customer, "Bill-to Customer No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '');
                    END;
                IF Cust."Wine-au" then begin
                    Winelogovisible := true;
                end else
                    Winelogovisible := false;
                //Check WET Line
                GLSetup.GET;
                SalesLine2.reset;
                SalesLine2.SetRange("Document Type", "Document Type");
                SalesLine2.SetRange("Document No.", "No.");
                SalesLine2.SetRange("VAT Prod. Posting Group", GLSetup."NXN WET Product Posting Group");
                IF SalesLine2.FindFirst() then
                    GSTWEGCaption := 'WEG'
                else
                    GSTWEGCaption := 'GST'

                // IF Cust."Print Invoice Note" THEN
                //     CustomTxt := SalesSetup."Invoice Note"
                // ELSE
                //     CustomTxt := '';
                //NZABNNO := '';
                // IF Cust."Country/Region Code" = CompanyInfo."NZ Country Code-NXN" then begin
                //     NZABNNO := CompanyInfo."NZBN No.-NXN";
                //     NZABNNoCaption := 'NZBN'
                // end else begin
                //     NZABNNO := CompanyInfo.ABN;
                //     NZABNNoCaption := 'ABN';
                // end;

            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        Caption = 'No. of Copies';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the No. of Copies field';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        Caption = 'Show Internal Information';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Show Internal Information field';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Log Interaction field';
                    }
                    field(AmountInWords; AmountInWords)
                    {
                        Caption = 'Show Total In Words';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Show Total In Words field';
                    }
                    field(CurrencyLCY; CurrencyLCY)
                    {
                        Caption = 'Show LCY for FCY';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Show LCY for FCY field';
                    }
                    field(ShowTHFormatting; ShowTHFormatting)
                    {
                        Caption = 'Show TH Amount In Words';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Show TH Amount In Words field';
                    }
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
                    {
                        Caption = 'Show Assembly Components';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Show Assembly Components field';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage()
        begin
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        SalesSetup.GET;

        CASE SalesSetup."Logo Position on Documents" OF
            SalesSetup."Logo Position on Documents"::"No Logo":
                ;
            SalesSetup."Logo Position on Documents"::Left:
                BEGIN
                    CompanyInfo3.GET;
                    CompanyInfo3.CALCFIELDS(Picture);
                END;
            SalesSetup."Logo Position on Documents"::Center:
                BEGIN
                    CompanyInfo1.GET;
                    CompanyInfo1.CALCFIELDS(Picture);
                END;
            SalesSetup."Logo Position on Documents"::Right:
                BEGIN
                    CompanyInfo2.GET;
                    CompanyInfo2.CALCFIELDS(Picture);
                END;
        END;
        CompanyPic.GET;
        CompanyInfo.CalcFields("NXN Wine Logo");
        CompanyPic.CALCFIELDS(CompanyPic.Picture);
        CountryName.GET(CompanyInfo."Country/Region Code");
    end;

    trigger OnPreReport()
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
    end;

    var
        GSTWEGCaption: Text[20];
        SalesLine2: Record "Sales Line";
        Text000: Label 'Salesperson';
        Text001: Label 'Total %1';
        Text002: Label 'Total %1 Incl. VAT';
        Text003: Label 'COPY';
        Text004: Label 'Sales - Order %1';
        Text005: Label 'Page %1';
        Text006: Label 'Total %1 Excl. VAT';
        GLSetup: Record "General Ledger Setup";
        Winelogovisible: Boolean;
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        NZABNNO: Text;
        NZABNNOCaption: Text;
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record "Customer";
        VATAmountLine: Record "VAT Amount Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Codeunit "Language";
        CurrExchRate: Record "Currency Exchange Rate";
        TempPostedAsmLine: Record "Posted Assembly Line" temporary;
        SalesInvCountPrinted: Codeunit "Sales Inv.-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        //PostedShipmentDate: Date;
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        OrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: Label 'VAT Amount Specification in ';
        Text008: Label 'Local Currency';
        VALExchRate: Text[50];
        Text009: Label 'Exchange rate: %1/%2';
        CalculatedExchRate: Decimal;
        Text010: Label 'Sales - Prepayment Invoice %1';
        OutputNo: Integer;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        TotalPaymentDiscountOnVAT: Decimal;
        TotalInclVATTextLCY: Text[50];
        TotalExclVATTextLCY: Text[50];
        AmountLCY: Decimal;
        AmountIncLCY: Decimal;
        CurrencyLCY: Boolean;
        AmountInWords: Boolean;
        AmountLangA: array[2] of Text[80];
        AmountLangB: array[2] of Text[80];
        SalesLine: Record "Sales Line";
        ShowTHFormatting: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        VATPercentCaptionLbl: Label 'VAT %';
        VATBaseCaptionLbl: Label 'VAT Base';
        VATAmountCaptionLbl: Label 'VAT Amount';
        VATAmountSpecificationCaptionLbl: Label 'VAT Amount Specification';
        VATIdentifierCaptionLbl: Label 'VAT Identifier';
        InvDiscBaseAmountCaptionLbl: Label 'Invoice Discount Base Amount';
        LineAmountCaptionLbl: Label 'Line Amount';
        InvoiceDiscountAmountCaptionLbl: Label 'Invoice Discount Amount';
        TotalCaptionLbl: Label 'Total';
        DocumentDateCaptionLbl: Label 'Document Date';
        PhoneNoCaptionLbl: Label 'Phone No.';
        VATRegNoCaptionLbl: Label 'VAT Registration No.';
        GiroNoCaptionLbl: Label 'Giro No.';
        BankNameCaptionLbl: Label 'Bank';
        BankAccountNoCaptionLbl: Label 'Account No.';
        DueDateCaptionLbl: Label 'Due Date';
        InvoiceNoCaptionLbl: Label 'Invoice No.';
        PostingDateCaptionLbl: Label 'Posting Date';
        ABNCaptionLbl: Label 'ABN';
        DivisionPartNoCaptionLbl: Label 'Division Part No.';
        PaymentTermsDescriptionCaptionLbl: Label 'Payment Terms';
        ShipmentMethodDescriptionCaptionLbl: Label 'Shipment Method';
        HomePageCaptionLbl: Label 'Home Page';
        EmailIdCaptionLbl: Label 'E-Mail';
        HeaderDimensionsCaptionLbl: Label 'Header Dimensions';
        UnitPriceCaptionLbl: Label 'Unit Price';
        DiscountPercentCaptionLbl: Label 'Discount%';
        AmountCaptionLbl: Label 'Amount';
        PostedShipmentDateCaptionLbl: Label 'Posted Shipment Date';
        InvDiscountAmountCaptionLbl: Label 'Invoice Discount Amount';
        SubtotalCaptionLbl: Label 'Subtotal';
        PaymentDiscountonVATCaptionLbl: Label 'Payment Discount on VAT';
        ExchangeRateCaptionLbl: Label 'Exchange Rate';
        ShipmentCaptionLbl: Label 'Shipment';
        LineDimensionsCaptionLbl: Label 'Line Dimensions';
        ShiptoAddressCaptionLbl: Label 'Ship-to Address';
        CompanyInfo4: Record "Company Information";
        CompanyPic: Record "Company Information";
        CountryName: Record "Country/Region";
        StarSign: Text;
        TotalStarSign: Text;
        CustomTxt: Text[250];
        UnitPrice: Decimal;
        SaveOutputNo: Integer;
        Brand: Text;
        ManufacturerName: Text;
        MFCode: Code[20];
        Item: Record Item;
        PostedShipmentDate: Date;

    procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;


    procedure FindPostedShipmentDate(): Date
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        IF "Sales Line"."Shipment No." <> '' THEN
            IF SalesShipmentHeader.GET("Sales Line"."Shipment No.") THEN
                EXIT(SalesShipmentHeader."Posting Date");

        //IF "Sales Header"."Order No."='' THEN
        EXIT("Sales Header"."Posting Date");

        // CASE "Sales Invoice Line".Type OF
        //  "Sales Invoice Line".Type::Item:
        //    GenerateBufferFromValueEntry("Sales Invoice Line");
        //  "Sales Invoice Line".Type::"G/L Account","Sales Invoice Line".Type::Resource,
        //  "Sales Invoice Line".Type::"Charge (Item)","Sales Invoice Line".Type::"Fixed Asset":
        //     GenerateBufferFromShipment("Sales Invoice Line");
        //  "Sales Invoice Line".Type::" ":
        //      EXIT(0D);
        // END;
        //
        // SalesShipmentBuffer.RESET;
        // SalesShipmentBuffer.SETRANGE("Document No.","Sales Invoice Line"."Document No.");
        // SalesShipmentBuffer.SETRANGE("Line No." ,"Sales Invoice Line"."Line No.");
        // IF SalesShipmentBuffer.FIND('-') THEN BEGIN
        //  SalesShipmentBuffer2 := SalesShipmentBuffer;
        //    IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
        //      SalesShipmentBuffer.GET(
        //        SalesShipmentBuffer2."Document No.",SalesShipmentBuffer2."Line No.",SalesShipmentBuffer2."Entry No.");
        //      SalesShipmentBuffer.DELETE;
        //      EXIT(SalesShipmentBuffer2."Posting Date");
        //    END ;
        //   SalesShipmentBuffer.CALCSUMS(Quantity);
        //   IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
        //     SalesShipmentBuffer.DELETEALL;
        //     EXIT("Sales Header"."Posting Date");
        //   END;
        // END ELSE
        //  EXIT("Sales Header"."Posting Date");
    end;

    // procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Shipment Line")
    // var
    //     ValueEntry: Record "Value Entry";
    //     ItemLedgerEntry: Record "Item Ledger Entry";
    //     TotalQuantity: Decimal;
    //     Quantity: Decimal;
    // begin
    //     TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
    //     ValueEntry.SETCURRENTKEY("Document No.");
    //     ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
    //     ValueEntry.SETRANGE("Posting Date", "Sales Header"."Posting Date");
    //     ValueEntry.SETRANGE("Item Charge No.", '');
    //     ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
    //     IF ValueEntry.FIND('-') THEN
    //         REPEAT
    //             IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
    //                 IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN
    //                     Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
    //                 ELSE
    //                     Quantity := ValueEntry."Invoiced Quantity";
    //                 AddBufferEntry(
    //                   SalesInvoiceLine2,
    //                   -Quantity,
    //                   ItemLedgerEntry."Posting Date");
    //                 TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
    //             END;
    //             FirstValueEntryNo := ValueEntry."Entry No." + 1;
    //         UNTIL (ValueEntry.NEXT = 0) OR (TotalQuantity = 0);
    // end;

    procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line")
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        // TotalQuantity := 0;
        // SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        // SalesInvoiceHeader.SETFILTER("No.",'..%1',"Sales Header"."No.");
        // SalesInvoiceHeader.SETRANGE("Order No.","Sales Header"."Order No.");
        // IF SalesInvoiceHeader.FIND('-') THEN
        //  REPEAT
        //    SalesInvoiceLine2.SETRANGE("Document No.",SalesInvoiceHeader."No.");
        //    SalesInvoiceLine2.SETRANGE("Line No.",SalesInvoiceLine."Line No.");
        //    SalesInvoiceLine2.SETRANGE(Type,SalesInvoiceLine.Type);
        //    SalesInvoiceLine2.SETRANGE("No.",SalesInvoiceLine."No.");
        //    SalesInvoiceLine2.SETRANGE("Unit of Measure Code",SalesInvoiceLine."Unit of Measure Code");
        //    IF SalesInvoiceLine2.FIND('-') THEN
        //      REPEAT
        //        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
        //      UNTIL SalesInvoiceLine2.NEXT = 0;
        //  UNTIL SalesInvoiceHeader.NEXT = 0;
        //
        // SalesShipmentLine.SETCURRENTKEY("Order No.","Order Line No.");
        // SalesShipmentLine.SETRANGE("Order No.","Sales Header"."Order No.");
        // SalesShipmentLine.SETRANGE("Order Line No.",SalesInvoiceLine."Line No.");
        // SalesShipmentLine.SETRANGE("Line No.",SalesInvoiceLine."Line No.");
        // SalesShipmentLine.SETRANGE(Type,SalesInvoiceLine.Type);
        // SalesShipmentLine.SETRANGE("No.",SalesInvoiceLine."No.");
        // SalesShipmentLine.SETRANGE("Unit of Measure Code",SalesInvoiceLine."Unit of Measure Code");
        // SalesShipmentLine.SETFILTER(Quantity,'<>%1',0);
        //
        // IF SalesShipmentLine.FIND('-') THEN
        //  REPEAT
        //    IF "Sales Header"."Get Shipment Used" THEN
        //      CorrectShipment(SalesShipmentLine);
        //    IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
        //      TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
        //    ELSE BEGIN
        //      IF ABS(SalesShipmentLine.Quantity)  > ABS(TotalQuantity) THEN
        //        SalesShipmentLine.Quantity := TotalQuantity;
        //      Quantity :=
        //        SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);
        //
        //      TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
        //      SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;
        //
        //      IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN
        //        BEGIN
        //          AddBufferEntry(
        //            SalesInvoiceLine,
        //            Quantity,
        //            SalesShipmentHeader."Posting Date");
        //        END;
        //    END;
        //  UNTIL (SalesShipmentLine.NEXT = 0) OR (TotalQuantity = 0);
    end;


    procedure CorrectShipment(var SalesShipmentLine: Record "Sales Shipment Line")
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
            REPEAT
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            UNTIL SalesInvoiceLine.NEXT = 0;
    end;


    procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date)
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.MODIFY;
            EXIT;
        END;

        WITH SalesShipmentBuffer DO BEGIN
            "Document No." := SalesInvoiceLine."Document No.";
            "Line No." := SalesInvoiceLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := SalesInvoiceLine.Type;
            "No." := SalesInvoiceLine."No.";
            Quantity := QtyOnShipment;
            "Posting Date" := PostingDate;
            INSERT;
            NextEntryNo := NextEntryNo + 1
        END;
    end;

    local procedure DocumentCaption(): Text[250]
    begin
        //IF "Sales Header"."Prepayment Invoice" THEN
        //EXIT(Text010);
        EXIT(Text004);
    end;


    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; NewAmountInWords: Boolean; NewCurrencyLCY: Boolean; NewShowTHFormatting: Boolean; NewDisplayAsmInfo: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        AmountInWords := NewAmountInWords;
        CurrencyLCY := NewCurrencyLCY;
        ShowTHFormatting := NewShowTHFormatting;
        DisplayAssemblyInformation := NewDisplayAsmInfo;
    end;

    procedure CollectAsmInformation()
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        PostedAsmHeader: Record "Posted Assembly Header";
        PostedAsmLine: Record "Posted Assembly Line";
        SalesShipmentLine: Record "Sales Shipment Line";
    begin
        // TempPostedAsmLine.DELETEALL;
        // IF "Sales Invoice Line".Type <> "Sales Invoice Line".Type::Item THEN
        //  EXIT;
        // WITH ValueEntry DO BEGIN
        //  SETCURRENTKEY("Document No.");
        //  SETRANGE("Document No.","Sales Invoice Line"."Document No.");
        //  SETRANGE("Document Type","Document Type"::"Sales Invoice");
        //  SETRANGE("Document Line No.","Sales Invoice Line"."Line No.");
        //  IF NOT FINDSET THEN
        //    EXIT;
        // END;
        // REPEAT
        //  IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
        //    IF ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" THEN BEGIN
        //      SalesShipmentLine.GET(ItemLedgerEntry."Document No.",ItemLedgerEntry."Document Line No.");
        //      IF SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader) THEN BEGIN
        //        PostedAsmLine.SETRANGE("Document No.",PostedAsmHeader."No.");
        //        IF PostedAsmLine.FINDSET THEN
        //          REPEAT
        //            TreatAsmLineBuffer(PostedAsmLine);
        //          UNTIL PostedAsmLine.NEXT = 0;
        //      END;
        //    END;
        //  END;
        // UNTIL ValueEntry.NEXT = 0;
    end;

    procedure TreatAsmLineBuffer(PostedAsmLine: Record "Posted Assembly Line")
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type, PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.", PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code", PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description, PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code", PostedAsmLine."Unit of Measure Code");
        IF TempPostedAsmLine.FINDFIRST THEN BEGIN
            TempPostedAsmLine.Quantity += PostedAsmLine.Quantity;
            TempPostedAsmLine.MODIFY;
        END ELSE BEGIN
            CLEAR(TempPostedAsmLine);
            TempPostedAsmLine := PostedAsmLine;
            TempPostedAsmLine.INSERT;
        END;
    end;

    procedure GetUOMText(UOMCode: Code[10]): Text[10]
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
            EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent(): Text[10]
    begin
        EXIT(PADSTR('', 2, ' '));
    end;
}

