namespace Whole_Foods;

entity Plants {
    key WERKS  : String(4); // Plant ID
    NAME1      : String(30); // Name
    STRAS      : String(45); // House No. & Street
    PSTLZ      : String(10); // Postal/zip code
    ORT01      : String(25); // City
    LANDX      : String(15); // Country
    CNTACT     : String(20); // Phone number
}

entity Materials {
    key MATNR : String(25); // Material ID
    GROUP    : Association to MATGRPS; // Material group
    TYPE     : Association to MTTYPS; // Material type
    MAKTX    : String(40); // Material description
    UOM      : String(2); // Unit of measure
}

entity MATGRPS {
    key MATKL   : String(9); // Material group
    MATKLTX     : String(40); // Material group description
}

entity MTTYPS {
    key MTART    : String(9); // Material Type
    MTARTTX      : String(40); // Material Type Description
}

entity PartnerInfo {
    key PARTNER : String(10); // Business partner ID
    BPTYPE     : Association to PartnerType; // BP Category
    NAME       : String(50); // BP Name
    STRAS      : String(30); // House No. & Street
    PSTLZ      : String(10); // Postal code
    ORT01      : String(25); // City
    LANDX      : String(15); // Country
    CNTACT     : String(20); // Contact No.
}

entity PartnerType {
    key ID : String(15); // Organization-Person
}

entity Roles {
    key ROLE : String(4); // BP Role ID
    DESC     : String(30); // Role Description
}

entity PartnerRole {
    key BPARTNER : Association to PartnerInfo; // BP Role ID
    key BROLES   : Association to Roles; // Role Description
}
