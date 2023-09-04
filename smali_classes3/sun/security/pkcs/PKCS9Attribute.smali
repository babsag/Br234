.class public Lsun/security/pkcs/PKCS9Attribute;
.super Ljava/lang/Object;
.source "PKCS9Attribute.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CHALLENGE_PASSWORD_STR:Ljava/lang/String; = "ChallengePassword"

.field public static final CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CONTENT_TYPE_STR:Ljava/lang/String; = "ContentType"

.field public static final COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final COUNTERSIGNATURE_STR:Ljava/lang/String; = "Countersignature"

.field public static final EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EMAIL_ADDRESS_STR:Ljava/lang/String; = "EmailAddress"

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_STR:Ljava/lang/String; = "ExtendedCertificateAttributes"

.field public static final EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENSION_REQUEST_STR:Ljava/lang/String; = "ExtensionRequest"

.field public static final ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field public static final ISSUER_SERIALNUMBER_STR:Ljava/lang/String; = "IssuerAndSerialNumber"

.field public static final MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final MESSAGE_DIGEST_STR:Ljava/lang/String; = "MessageDigest"

.field public static final SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNATURE_TIMESTAMP_TOKEN_STR:Ljava/lang/String; = "SignatureTimestampToken"

.field public static final SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_CERTIFICATE_STR:Ljava/lang/String; = "SigningCertificate"

.field public static final SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_TIME_STR:Ljava/lang/String; = "SigningTime"

.field public static final SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SMIME_CAPABILITY_STR:Ljava/lang/String; = "SMIMECapability"

.field public static final UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_ADDRESS_STR:Ljava/lang/String; = "UnstructuredAddress"

.field public static final UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_NAME_STR:Ljava/lang/String; = "UnstructuredName"

.field private static final a:Lsun/security/util/Debug;

.field static final b:[Lsun/security/util/ObjectIdentifier;

.field private static final c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[[Ljava/lang/Byte;

.field private static final f:[Ljava/lang/Class;

.field private static final g:[Z


# instance fields
.field private h:I

.field private i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "jar"

    .line 1
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/PKCS9Attribute;->a:Lsun/security/util/Debug;

    const/16 v0, 0x12

    new-array v1, v0, [Lsun/security/util/ObjectIdentifier;

    .line 2
    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->b:[Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 3
    :goto_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->b:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v3

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x4

    const/16 v11, 0x9

    const/4 v12, 0x0

    if-ge v2, v4, :cond_0

    new-array v4, v6, [I

    aput v1, v4, v12

    aput v5, v4, v1

    const/16 v6, 0x348

    aput v6, v4, v5

    const v5, 0x1bb8d

    aput v5, v4, v8

    aput v1, v4, v10

    aput v11, v4, v7

    aput v2, v4, v9

    .line 4
    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    array-length v2, v3

    sub-int/2addr v2, v5

    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 6
    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    aput-object v4, v3, v2

    .line 7
    array-length v2, v3

    sub-int/2addr v2, v1

    new-array v4, v11, [I

    fill-array-data v4, :array_1

    .line 8
    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    aput-object v4, v3, v2

    .line 9
    aget-object v2, v3, v1

    sput-object v2, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 10
    aget-object v2, v3, v5

    sput-object v2, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 11
    aget-object v2, v3, v8

    sput-object v2, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 12
    aget-object v2, v3, v10

    sput-object v2, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 13
    aget-object v2, v3, v7

    sput-object v2, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

    .line 14
    aget-object v2, v3, v9

    sput-object v2, Lsun/security/pkcs/PKCS9Attribute;->COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

    .line 15
    aget-object v2, v3, v6

    sput-object v2, Lsun/security/pkcs/PKCS9Attribute;->CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

    const/16 v2, 0x8

    .line 16
    aget-object v4, v3, v2

    sput-object v4, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 17
    aget-object v4, v3, v11

    sput-object v4, Lsun/security/pkcs/PKCS9Attribute;->EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xa

    .line 18
    aget-object v13, v3, v4

    sput-object v13, Lsun/security/pkcs/PKCS9Attribute;->ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    const/16 v13, 0xe

    .line 19
    aget-object v14, v3, v13

    sput-object v14, Lsun/security/pkcs/PKCS9Attribute;->EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

    const/16 v14, 0xf

    .line 20
    aget-object v15, v3, v14

    sput-object v15, Lsun/security/pkcs/PKCS9Attribute;->SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

    const/16 v15, 0x10

    .line 21
    aget-object v16, v3, v15

    sput-object v16, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

    const/16 v16, 0x11

    .line 22
    aget-object v17, v3, v16

    sput-object v17, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    .line 23
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12, v0}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v12, Lsun/security/pkcs/PKCS9Attribute;->c:Ljava/util/Hashtable;

    .line 24
    aget-object v0, v3, v1

    const-string v1, "emailaddress"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    aget-object v0, v3, v5

    const-string v1, "unstructuredname"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    aget-object v0, v3, v8

    const-string v1, "contenttype"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    aget-object v0, v3, v10

    const-string v1, "messagedigest"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    aget-object v0, v3, v7

    const-string v1, "signingtime"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    aget-object v0, v3, v9

    const-string v1, "countersignature"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    aget-object v0, v3, v6

    const-string v1, "challengepassword"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    aget-object v0, v3, v2

    const-string v1, "unstructuredaddress"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    aget-object v0, v3, v11

    const-string v1, "extendedcertificateattributes"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    aget-object v0, v3, v4

    const-string v1, "issuerandserialnumber"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    .line 34
    aget-object v1, v3, v0

    const-string v0, "rsaproprietary"

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 35
    aget-object v4, v3, v1

    invoke-virtual {v12, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    .line 36
    aget-object v4, v3, v0

    const-string v0, "signingdescription"

    invoke-virtual {v12, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    aget-object v0, v3, v13

    const-string v4, "extensionrequest"

    invoke-virtual {v12, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    aget-object v0, v3, v14

    const-string v4, "smimecapability"

    invoke-virtual {v12, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    aget-object v0, v3, v15

    const-string v4, "signingcertificate"

    invoke-virtual {v12, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    aget-object v0, v3, v16

    const-string v4, "signaturetimestamptoken"

    invoke-virtual {v12, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v15}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lsun/security/pkcs/PKCS9Attribute;->d:Ljava/util/Hashtable;

    const/4 v4, 0x1

    .line 42
    aget-object v12, v3, v4

    const-string v4, "EmailAddress"

    invoke-virtual {v0, v12, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    aget-object v4, v3, v5

    const-string v12, "UnstructuredName"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    aget-object v4, v3, v8

    const-string v12, "ContentType"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    aget-object v4, v3, v10

    const-string v12, "MessageDigest"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    aget-object v4, v3, v7

    const-string v12, "SigningTime"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    aget-object v4, v3, v9

    const-string v12, "Countersignature"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    aget-object v4, v3, v6

    const-string v12, "ChallengePassword"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    aget-object v4, v3, v2

    const-string v12, "UnstructuredAddress"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    aget-object v4, v3, v11

    const-string v12, "ExtendedCertificateAttributes"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    .line 51
    aget-object v12, v3, v4

    const-string v4, "IssuerAndSerialNumber"

    invoke-virtual {v0, v12, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xb

    .line 52
    aget-object v12, v3, v4

    const-string v4, "RSAProprietary"

    invoke-virtual {v0, v12, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    aget-object v4, v3, v1

    const-string v12, "RSAProprietary"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xd

    .line 54
    aget-object v12, v3, v4

    const-string v4, "SMIMESigningDesc"

    invoke-virtual {v0, v12, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    aget-object v4, v3, v13

    const-string v12, "ExtensionRequest"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    aget-object v4, v3, v14

    const-string v12, "SMIMECapability"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    aget-object v4, v3, v15

    const-string v12, "SigningCertificate"

    invoke-virtual {v0, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    aget-object v3, v3, v16

    const-string v4, "SignatureTimestampToken"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12

    new-array v3, v0, [[Ljava/lang/Byte;

    const/4 v0, 0x0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Byte;

    .line 59
    new-instance v14, Ljava/lang/Byte;

    const/16 v13, 0x16

    invoke-direct {v14, v13}, Ljava/lang/Byte;-><init>(B)V

    aput-object v14, v15, v4

    aput-object v15, v3, v12

    new-array v13, v12, [Ljava/lang/Byte;

    new-instance v14, Ljava/lang/Byte;

    const/16 v15, 0x16

    invoke-direct {v14, v15}, Ljava/lang/Byte;-><init>(B)V

    aput-object v14, v13, v4

    aput-object v13, v3, v5

    new-array v13, v12, [Ljava/lang/Byte;

    new-instance v14, Ljava/lang/Byte;

    invoke-direct {v14, v9}, Ljava/lang/Byte;-><init>(B)V

    aput-object v14, v13, v4

    aput-object v13, v3, v8

    new-array v13, v12, [Ljava/lang/Byte;

    new-instance v14, Ljava/lang/Byte;

    invoke-direct {v14, v10}, Ljava/lang/Byte;-><init>(B)V

    aput-object v14, v13, v4

    aput-object v13, v3, v10

    new-array v13, v12, [Ljava/lang/Byte;

    new-instance v14, Ljava/lang/Byte;

    const/16 v15, 0x17

    invoke-direct {v14, v15}, Ljava/lang/Byte;-><init>(B)V

    aput-object v14, v13, v4

    aput-object v13, v3, v7

    new-array v13, v12, [Ljava/lang/Byte;

    new-instance v12, Ljava/lang/Byte;

    const/16 v14, 0x30

    invoke-direct {v12, v14}, Ljava/lang/Byte;-><init>(B)V

    aput-object v12, v13, v4

    aput-object v13, v3, v9

    new-array v12, v5, [Ljava/lang/Byte;

    new-instance v13, Ljava/lang/Byte;

    const/16 v15, 0x13

    invoke-direct {v13, v15}, Ljava/lang/Byte;-><init>(B)V

    aput-object v13, v12, v4

    new-instance v13, Ljava/lang/Byte;

    const/16 v15, 0x14

    invoke-direct {v13, v15}, Ljava/lang/Byte;-><init>(B)V

    const/4 v15, 0x1

    aput-object v13, v12, v15

    aput-object v12, v3, v6

    new-array v12, v5, [Ljava/lang/Byte;

    new-instance v13, Ljava/lang/Byte;

    const/16 v6, 0x13

    invoke-direct {v13, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v13, v12, v4

    new-instance v6, Ljava/lang/Byte;

    const/16 v13, 0x14

    invoke-direct {v6, v13}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v12, v15

    aput-object v12, v3, v2

    new-array v6, v15, [Ljava/lang/Byte;

    new-instance v12, Ljava/lang/Byte;

    const/16 v13, 0x31

    invoke-direct {v12, v13}, Ljava/lang/Byte;-><init>(B)V

    aput-object v12, v6, v4

    aput-object v6, v3, v11

    new-array v6, v15, [Ljava/lang/Byte;

    new-instance v12, Ljava/lang/Byte;

    invoke-direct {v12, v14}, Ljava/lang/Byte;-><init>(B)V

    aput-object v12, v6, v4

    const/16 v12, 0xa

    aput-object v6, v3, v12

    const/16 v6, 0xb

    aput-object v0, v3, v6

    aput-object v0, v3, v1

    const/16 v6, 0xd

    aput-object v0, v3, v6

    new-array v6, v15, [Ljava/lang/Byte;

    new-instance v12, Ljava/lang/Byte;

    invoke-direct {v12, v14}, Ljava/lang/Byte;-><init>(B)V

    aput-object v12, v6, v4

    const/16 v12, 0xe

    aput-object v6, v3, v12

    new-array v6, v15, [Ljava/lang/Byte;

    new-instance v12, Ljava/lang/Byte;

    invoke-direct {v12, v14}, Ljava/lang/Byte;-><init>(B)V

    aput-object v12, v6, v4

    const/16 v12, 0xf

    aput-object v6, v3, v12

    new-array v6, v15, [Ljava/lang/Byte;

    new-instance v12, Ljava/lang/Byte;

    invoke-direct {v12, v14}, Ljava/lang/Byte;-><init>(B)V

    aput-object v12, v6, v4

    const/16 v12, 0x10

    aput-object v6, v3, v12

    new-array v6, v15, [Ljava/lang/Byte;

    new-instance v12, Ljava/lang/Byte;

    invoke-direct {v12, v14}, Ljava/lang/Byte;-><init>(B)V

    aput-object v12, v6, v4

    aput-object v6, v3, v16

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->e:[[Ljava/lang/Byte;

    const/16 v3, 0x12

    new-array v4, v3, [Ljava/lang/Class;

    .line 60
    sput-object v4, Lsun/security/pkcs/PKCS9Attribute;->f:[Ljava/lang/Class;

    :try_start_0
    const-string v3, "[Ljava.lang.String;"

    .line 61
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v6, 0x1

    aput-object v3, v4, v6

    aput-object v3, v4, v5

    const-string v5, "sun.security.util.ObjectIdentifier"

    .line 62
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "[B"

    .line 63
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "java.util.Date"

    .line 64
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "[Lsun.security.pkcs.SignerInfo;"

    .line 65
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "java.lang.String"

    .line 66
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    aput-object v3, v4, v2

    aput-object v0, v4, v11

    const/16 v2, 0xa

    aput-object v0, v4, v2

    const/16 v2, 0xb

    aput-object v0, v4, v2

    aput-object v0, v4, v1

    const/16 v1, 0xd

    aput-object v0, v4, v1

    const-string v1, "sun.security.x509.CertificateExtensions"

    .line 67
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v4, v2

    const/16 v1, 0xf

    aput-object v0, v4, v1

    const/16 v1, 0x10

    aput-object v0, v4, v1

    const-string v0, "[B"

    .line 68
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v16
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x12

    new-array v0, v0, [Z

    .line 69
    fill-array-data v0, :array_2

    sput-object v0, Lsun/security/pkcs/PKCS9Attribute;->g:[Z

    return-void

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xe
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, v0, p2}, Lsun/security/pkcs/PKCS9Attribute;->b(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized attribute name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " constructing PKCS9Attribute."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    const/4 p1, 0x2

    .line 9
    invoke-virtual {v0, p1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_8

    .line 11
    array-length v0, v1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 12
    aget-object v0, v1, p1

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 13
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->b:[Lsun/security/util/ObjectIdentifier;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lsun/security/pkcs/PKCS9Attribute;->a(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v2

    iput v2, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 14
    sget-object p1, Lsun/security/pkcs/PKCS9Attribute;->a:Lsun/security/util/Debug;

    if-eqz p1, :cond_0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring unsupported signer attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 16
    :cond_0
    new-instance p1, Lsun/security/pkcs/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PKCS9 attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance v0, Lsun/security/util/DerInputStream;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 18
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->g:[Z

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    array-length v1, v0

    if-le v1, v3, :cond_2

    .line 19
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attribute;->c()V

    :cond_2
    const/4 v1, 0x0

    .line 20
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 21
    new-instance v2, Ljava/lang/Byte;

    aget-object v3, v0, v1

    iget-byte v3, v3, Lsun/security/util/DerValue;->tag:B

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    .line 22
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->e:[[Ljava/lang/Byte;

    iget v5, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    aget-object v3, v3, v5

    invoke-static {v2, v3, p1}, Lsun/security/pkcs/PKCS9Attribute;->a(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 23
    invoke-direct {p0, v2}, Lsun/security/pkcs/PKCS9Attribute;->d(Ljava/lang/Byte;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_4
    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 25
    :pswitch_0
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    goto/16 :goto_3

    .line 26
    :pswitch_1
    new-instance v1, Lsun/security/pkcs/SigningCertificateInfo;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lsun/security/pkcs/SigningCertificateInfo;-><init>([B)V

    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    goto/16 :goto_3

    .line 27
    :pswitch_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 SMIMECapability attribute not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :pswitch_3
    new-instance v1, Lsun/security/x509/CertificateExtensions;

    new-instance v2, Lsun/security/util/DerInputStream;

    aget-object p1, v0, p1

    .line 29
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    goto/16 :goto_3

    .line 30
    :pswitch_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 attribute #13 not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :pswitch_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :pswitch_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :pswitch_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :pswitch_8
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    goto :goto_3

    .line 35
    :pswitch_9
    array-length v1, v0

    new-array v1, v1, [Lsun/security/pkcs/SignerInfo;

    .line 36
    :goto_1
    array-length v2, v0

    if-ge p1, v2, :cond_5

    .line 37
    new-instance v2, Lsun/security/pkcs/SignerInfo;

    aget-object v3, v0, p1

    .line 38
    invoke-virtual {v3}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 39
    :cond_5
    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    goto :goto_3

    .line 40
    :pswitch_a
    new-instance v1, Lsun/security/util/DerInputStream;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    goto :goto_3

    .line 41
    :pswitch_b
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    goto :goto_3

    .line 42
    :pswitch_c
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    goto :goto_3

    .line 43
    :pswitch_d
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 44
    :goto_2
    array-length v2, v0

    if-ge p1, v2, :cond_6

    .line 45
    aget-object v2, v0, p1

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 46
    :cond_6
    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    :goto_3
    return-void

    .line 47
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9Attribute doesn\'t have two components"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Excess data parsing PKCS9Attribute"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lsun/security/pkcs/PKCS9Attribute;->b(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;[Ljava/lang/Object;I)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    .line 2
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private b(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->b:[Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lsun/security/pkcs/PKCS9Attribute;->a(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->f:[Ljava/lang/Class;

    aget-object v0, v1, v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p2, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong value class  for attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " constructing PKCS9Attribute; was "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", should be "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    aget-object p1, v1, p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported OID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " constructing PKCS9Attribute."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Single-value attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has multiple values."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Ljava/lang/Byte;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->e:[[Ljava/lang/Byte;

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    aget-object v0, v0, v1

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "Value of attribute "

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ") has wrong tag: "

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".  Expected tags: "

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    .line 10
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    .line 11
    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_0

    const-string v2, ", "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "."

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 1

    .line 2
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->c:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/security/util/ObjectIdentifier;

    return-object p0
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 3
    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    const/4 v2, 0x0

    const/16 v3, 0x31

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_2

    .line 5
    :pswitch_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 SigningCertificate attribute not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 attribute #15 not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :pswitch_3
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 8
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v2, Lsun/security/x509/CertificateExtensions;

    const/4 v4, 0x1

    .line 9
    :try_start_0
    invoke-virtual {v2, v1, v4}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 attribute #13 not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :pswitch_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :pswitch_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :pswitch_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :pswitch_8
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 17
    array-length v4, v1

    new-array v4, v4, [Lsun/security/util/DerOutputStream;

    .line 18
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 19
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v5, v4, v2

    .line 20
    aget-object v5, v4, v2

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, v3, v4}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto/16 :goto_2

    .line 22
    :pswitch_9
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 23
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_2

    .line 25
    :pswitch_a
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v1, [Lsun/security/util/DerEncoder;

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto :goto_2

    .line 26
    :pswitch_b
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 27
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_2

    .line 29
    :pswitch_c
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 30
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 31
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_2

    .line 32
    :pswitch_d
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 33
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v2, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_2

    .line 35
    :pswitch_e
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 36
    array-length v4, v1

    new-array v4, v4, [Lsun/security/util/DerOutputStream;

    .line 37
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 38
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v5, v4, v2

    .line 39
    aget-object v5, v4, v2

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0, v3, v4}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 41
    :goto_2
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    const/16 v2, 0x30

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->d:Ljava/util/Hashtable;

    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->b:[Lsun/security/util/ObjectIdentifier;

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 2

    .line 1
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->b:[Lsun/security/util/ObjectIdentifier;

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public isSingleValued()Z
    .locals 2

    .line 1
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->g:[Z

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->d:Ljava/util/Hashtable;

    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->b:[Lsun/security/util/ObjectIdentifier;

    iget v3, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->g:[Z

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->h:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    instance-of v2, v1, [B

    if-eqz v2, :cond_0

    .line 7
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 8
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_1
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->i:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 13
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const-string v5, ", "

    .line 14
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    :goto_2
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
