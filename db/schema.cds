namespace Whole_Foods;

entity Users {
    USERID: Int16;
    USER: String(20);
}

entity Plants {
    key WERKS  : String(4); //Plant ID
    NAME1      : String(30); //Name
    STRAS      : String(45); //Street Address
    PSTLZ      : String(10); //Postal/Zip code
    ORT01      : String(25); //City
    LANDX      : String(15); //Country
    CNTACT     : String(20); //Phone number
    // Managed fields for timestamps and users
    createdAt  : Timestamp @cds.on.insert: $now;
    createdBy  : User @cds.on.insert: $user;
    modifiedAt : Timestamp @cds.on.insert: $now @cds.on.update: $now;
    modifiedBy : User @cds.on.insert: $user @cds.on.update: $user;
}

entity Materials {
    key MATNR : String(25); //Material ID
    MATKL   : String(9); //Material group
    MAKTX    : String(40); //Material description
    MTART    : String (4); //Material Type
    UOM      : String(2); //Unit of measure
    // Managed fields for timestamps and users
    createdAt  : Timestamp @cds.on.insert: $now;
    createdBy  : User @cds.on.insert: $user;
    modifiedAt : Timestamp @cds.on.insert: $now @cds.on.update: $now;
    modifiedBy : User @cds.on.insert: $user @cds.on.update: $user;
}

// MATERIAL GROUPS
entity MATGRPS {
    key MATKL   : String(9); //Material group
    MATKLTX     : String(40); //Material group description
    // Managed fields for timestamps and users
    createdAt  : Timestamp @cds.on.insert: $now;
    createdBy  : User @cds.on.insert: $user;
    modifiedAt : Timestamp @cds.on.insert: $now @cds.on.update: $now;
    modifiedBy : User @cds.on.insert: $user @cds.on.update: $user;
}

// MATERIAL TYPES
entity MTTYPS {
    key MTART    : String(9); // Material Type
    MTARTTX      : String(40); // Material Type Description
    // Managed fields for timestamps and users
    createdAt   : Timestamp @cds.on.insert: $now;
    createdBy   : User @cds.on.insert: $user;
    modifiedAt  : Timestamp @cds.on.insert: $now @cds.on.update: $now;
    modifiedBy  : User @cds.on.insert: $user @cds.on.update: $user;
}

// Define 'User' type for createdBy and modifiedBy fields
type User : String(20);

// Define 'Timestamp' type for createdAt and modifiedAt fields
type Timestamp : DateTime;
