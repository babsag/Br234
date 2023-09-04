.class public Lsun/security/x509/X500Name;
.super Ljava/lang/Object;
.source "X500Name.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;
.implements Ljava/security/Principal;


# static fields
.field public static final DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field public static final DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

.field public static final GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field public static final GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final INITIALS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SURNAME_OID:Lsun/security/util/ObjectIdentifier;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[I

.field private static final c:[I

.field public static final commonName_oid:Lsun/security/util/ObjectIdentifier;

.field public static final countryName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field public static final ipAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field public static final localityName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I

.field public static final orgName_oid:Lsun/security/util/ObjectIdentifier;

.field public static final orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final p:[I

.field private static final q:[I

.field private static final r:[I

.field private static final s:Ljava/lang/reflect/Constructor;

.field public static final stateName_oid:Lsun/security/util/ObjectIdentifier;

.field public static final streetAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final t:Ljava/lang/reflect/Field;

.field public static final title_oid:Lsun/security/util/ObjectIdentifier;

.field public static final userid_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private A:[B

.field private volatile B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation
.end field

.field private volatile C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:[Lsun/security/x509/RDN;

.field private z:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/X500Name;->a:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Lsun/security/x509/X500Name;->b:[I

    new-array v2, v0, [I

    .line 3
    fill-array-data v2, :array_1

    sput-object v2, Lsun/security/x509/X500Name;->c:[I

    new-array v3, v0, [I

    .line 4
    fill-array-data v3, :array_2

    sput-object v3, Lsun/security/x509/X500Name;->d:[I

    new-array v4, v0, [I

    .line 5
    fill-array-data v4, :array_3

    sput-object v4, Lsun/security/x509/X500Name;->e:[I

    new-array v5, v0, [I

    .line 6
    fill-array-data v5, :array_4

    sput-object v5, Lsun/security/x509/X500Name;->f:[I

    new-array v6, v0, [I

    .line 7
    fill-array-data v6, :array_5

    sput-object v6, Lsun/security/x509/X500Name;->g:[I

    new-array v7, v0, [I

    .line 8
    fill-array-data v7, :array_6

    sput-object v7, Lsun/security/x509/X500Name;->h:[I

    new-array v8, v0, [I

    .line 9
    fill-array-data v8, :array_7

    sput-object v8, Lsun/security/x509/X500Name;->i:[I

    new-array v9, v0, [I

    .line 10
    fill-array-data v9, :array_8

    sput-object v9, Lsun/security/x509/X500Name;->j:[I

    new-array v10, v0, [I

    .line 11
    fill-array-data v10, :array_9

    sput-object v10, Lsun/security/x509/X500Name;->k:[I

    new-array v11, v0, [I

    .line 12
    fill-array-data v11, :array_a

    sput-object v11, Lsun/security/x509/X500Name;->l:[I

    new-array v12, v0, [I

    .line 13
    fill-array-data v12, :array_b

    sput-object v12, Lsun/security/x509/X500Name;->m:[I

    new-array v13, v0, [I

    .line 14
    fill-array-data v13, :array_c

    sput-object v13, Lsun/security/x509/X500Name;->n:[I

    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_d

    sput-object v0, Lsun/security/x509/X500Name;->o:[I

    const/16 v14, 0xb

    new-array v14, v14, [I

    .line 16
    fill-array-data v14, :array_e

    sput-object v14, Lsun/security/x509/X500Name;->p:[I

    const/4 v15, 0x7

    move-object/from16 v16, v14

    new-array v14, v15, [I

    .line 17
    fill-array-data v14, :array_f

    sput-object v14, Lsun/security/x509/X500Name;->q:[I

    new-array v15, v15, [I

    .line 18
    fill-array-data v15, :array_10

    sput-object v15, Lsun/security/x509/X500Name;->r:[I

    .line 19
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    .line 20
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    .line 21
    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    .line 22
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    .line 23
    invoke-static {v8}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    .line 24
    invoke-static {v9}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    .line 25
    invoke-static {v6}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    .line 26
    invoke-static {v7}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    .line 27
    invoke-static {v10}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    .line 28
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    .line 29
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 30
    invoke-static {v11}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 31
    invoke-static {v12}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    .line 32
    invoke-static {v13}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    .line 33
    invoke-static/range {v16 .. v16}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    .line 34
    invoke-static {v14}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 35
    invoke-static {v15}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    .line 36
    sput-object v0, Lsun/security/x509/X500Name;->s:Ljava/lang/reflect/Constructor;

    .line 37
    sput-object v0, Lsun/security/x509/X500Name;->t:Ljava/lang/reflect/Field;

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x4
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x5
        0x4
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x5
        0x4
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x5
        0x4
        0x6
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x5
        0x4
        0x7
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x5
        0x4
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x5
        0x4
        0x9
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x5
        0x4
        0xa
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x5
        0x4
        0xb
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x5
        0x4
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x5
        0x4
        0x2a
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x4
        0x2b
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x5
        0x4
        0x2c
    .end array-data

    :array_d
    .array-data 4
        0x2
        0x5
        0x4
        0x2e
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x4
        0x1
        0x2a
        0x2
        0xb
        0x2
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x19
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name must not be null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "RFC2253"

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "DEFAULT"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lsun/security/x509/X500Name;->k(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lsun/security/x509/RDN;

    .line 12
    iput-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    .line 13
    new-instance v1, Lsun/security/x509/RDN;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 14
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v0, v0, v3

    iget-object v0, v0, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v3, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 15
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 16
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v0, v0, v3

    iget-object v0, v0, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v3, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, p1

    .line 17
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance v0, Lsun/security/x509/RDN;

    invoke-direct {v0, v2}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v0, p2, v2

    .line 18
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p2, p2, v2

    iget-object p2, p2, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance v0, Lsun/security/x509/AVA;

    sget-object v1, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v0, p2, p1

    .line 19
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance p3, Lsun/security/x509/RDN;

    invoke-direct {p3, v2}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object p3, p2, p1

    .line 20
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p2, p2, p1

    iget-object p2, p2, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance p3, Lsun/security/x509/AVA;

    sget-object v0, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0, v1}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object p3, p2, p1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lsun/security/x509/RDN;

    .line 32
    iput-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    .line 33
    new-instance v1, Lsun/security/x509/RDN;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 34
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v0, v0, v3

    iget-object v0, v0, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v3, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 35
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 36
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v0, v0, v3

    iget-object v0, v0, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v3, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, p1

    .line 37
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance v0, Lsun/security/x509/RDN;

    invoke-direct {v0, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v1, 0x3

    aput-object v0, p2, v1

    .line 38
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p2, p2, v1

    iget-object p2, p2, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance v0, Lsun/security/x509/AVA;

    sget-object v1, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v0, p2, p1

    .line 39
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance p3, Lsun/security/x509/RDN;

    invoke-direct {p3, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v0, 0x2

    aput-object p3, p2, v0

    .line 40
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p2, p2, v0

    iget-object p2, p2, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance p3, Lsun/security/x509/AVA;

    sget-object v0, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0, v1}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object p3, p2, p1

    .line 41
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance p3, Lsun/security/x509/RDN;

    invoke-direct {p3, v2}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object p3, p2, v2

    .line 42
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p2, p2, v2

    iget-object p2, p2, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance p3, Lsun/security/x509/AVA;

    sget-object p4, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p5}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p4, v0}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object p3, p2, p1

    .line 43
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance p3, Lsun/security/x509/RDN;

    invoke-direct {p3, v2}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object p3, p2, p1

    .line 44
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p2, p2, p1

    iget-object p2, p2, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance p3, Lsun/security/x509/AVA;

    sget-object p4, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance p5, Lsun/security/util/DerValue;

    invoke-direct {p5, p6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p4, p5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object p3, p2, p1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x4

    new-array p5, p5, [Lsun/security/x509/RDN;

    .line 22
    iput-object p5, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    .line 23
    new-instance v0, Lsun/security/x509/RDN;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v2, 0x3

    aput-object v0, p5, v2

    .line 24
    iget-object p5, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p5, p5, v2

    iget-object p5, p5, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance v0, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    const/4 p1, 0x0

    aput-object v0, p5, p1

    .line 25
    iget-object p5, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance v0, Lsun/security/x509/RDN;

    invoke-direct {v0, v1}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v2, 0x2

    aput-object v0, p5, v2

    .line 26
    iget-object p5, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p5, p5, v2

    iget-object p5, p5, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance v0, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v0, p5, p1

    .line 27
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance p5, Lsun/security/x509/RDN;

    invoke-direct {p5, v1}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object p5, p2, v1

    .line 28
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p2, p2, v1

    iget-object p2, p2, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance p5, Lsun/security/x509/AVA;

    sget-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    new-instance v2, Lsun/security/util/DerValue;

    invoke-direct {v2, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p5, v0, v2}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object p5, p2, p1

    .line 29
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance p3, Lsun/security/x509/RDN;

    invoke-direct {p3, v1}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object p3, p2, p1

    .line 30
    iget-object p2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object p2, p2, p1

    iget-object p2, p2, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    new-instance p3, Lsun/security/x509/AVA;

    sget-object p5, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p5, v0}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object p3, p2, p1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2}, Lsun/security/x509/X500Name;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->j(Lsun/security/util/DerInputStream;)V

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 56
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->j(Lsun/security/util/DerInputStream;)V

    return-void
.end method

.method public constructor <init>([Lsun/security/x509/RDN;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lsun/security/x509/RDN;

    .line 46
    iput-object p1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p1}, [Lsun/security/x509/RDN;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lsun/security/x509/RDN;

    iput-object p1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    .line 48
    :goto_0
    iget-object p1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 49
    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot create an X500Name"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method static a(Ljava/lang/String;II)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    if-eq v1, p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lsun/security/x509/X500Name;->t:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/X500Name;

    .line 2
    iput-object p0, v0, Lsun/security/x509/X500Name;->z:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected exception"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(IILjava/lang/String;)Z
    .locals 5

    const/16 v0, 0x5c

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    add-int/lit8 v2, p0, -0x1

    .line 1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    if-le p0, v1, :cond_1

    add-int/lit8 v2, p0, -0x1

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_1

    add-int/lit8 v2, p0, -0x2

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    if-le p0, v1, :cond_5

    add-int/lit8 v3, p0, -0x1

    .line 4
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_5

    add-int/lit8 v3, p0, -0x2

    .line 5
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_5

    add-int/lit8 p0, p0, -0x1

    const/4 v3, 0x0

    :goto_0
    if-lt p0, p1, :cond_3

    .line 6
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 7
    :cond_3
    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_5
    return v2
.end method

.method private c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lsun/security/x509/RDN;->b(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->u:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    iget-object v1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    if-eqz v1, :cond_2

    .line 5
    array-length v1, v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 6
    iget-object v3, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_1

    const-string v3, ", "

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->u:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    iget-object v1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    if-eqz v1, :cond_2

    .line 5
    array-length v1, v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 6
    iget-object v3, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_1

    const-string v3, ", "

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    iget-object v1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 4
    iget-object v2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const/16 v2, 0x2c

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Lsun/security/util/DerValue;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a DER string encoding, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;
    .locals 2

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/ObjectIdentifier;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private i(Lsun/security/x509/X500Name;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    iget-object v2, p1, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v3, v2

    if-nez v3, :cond_2

    return v0

    .line 2
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v4, v3

    if-nez v4, :cond_3

    return v1

    .line 3
    :cond_3
    array-length v3, v3

    array-length v2, v2

    if-ge v3, v2, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p1, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 5
    iget-object v4, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v4, v4, v2

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method private j(Lsun/security/util/DerInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    :try_start_0
    invoke-virtual {p1, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lsun/security/util/DerValue;

    const/16 v2, 0x30

    invoke-direct {p1, v2, v0}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 4
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    .line 5
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-array p1, v0, [Lsun/security/x509/RDN;

    .line 6
    iput-object p1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    goto :goto_2

    .line 7
    :cond_1
    array-length v1, p1

    new-array v1, v1, [Lsun/security/x509/RDN;

    iput-object v1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    .line 8
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 9
    iget-object v1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    new-instance v2, Lsun/security/x509/RDN;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private k(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x2c

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x3b

    .line 4
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-gez v3, :cond_2

    if-ltz v5, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lsun/security/x509/RDN;

    invoke-direct {v0, p1, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lsun/security/x509/RDN;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lsun/security/x509/RDN;

    iput-object p1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    return-void

    :cond_2
    :goto_1
    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    if-gez v3, :cond_4

    move v3, v5

    goto :goto_2

    .line 10
    :cond_4
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11
    :goto_2
    invoke-static {p1, v8, v3}, Lsun/security/x509/X500Name;->a(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v7, v5

    if-ltz v3, :cond_5

    const/4 v5, 0x1

    if-eq v7, v5, :cond_5

    .line 12
    invoke-static {v3, v8, p1}, Lsun/security/x509/X500Name;->b(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 13
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 14
    new-instance v6, Lsun/security/x509/RDN;

    invoke-direct {v6, v5, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    :cond_5
    add-int/lit8 v8, v3, 0x1

    .line 16
    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 17
    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_0

    :cond_6
    :goto_3
    new-array p1, v0, [Lsun/security/x509/RDN;

    .line 18
    iput-object p1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lsun/security/x509/RDN;

    .line 2
    iput-object p1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x2c

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v4, v3

    const/4 v3, 0x0

    :goto_0
    const-string v5, "RFC2253"

    if-ltz v4, :cond_2

    if-lez v4, :cond_1

    .line 5
    invoke-static {v4, v3, p1}, Lsun/security/x509/X500Name;->b(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v3, Lsun/security/x509/RDN;

    invoke-direct {v3, v1, v5}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    :cond_1
    add-int/lit8 v3, v4, 0x1

    .line 9
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, p1, v5}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lsun/security/x509/RDN;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lsun/security/x509/RDN;

    iput-object p1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    return-void
.end method


# virtual methods
.method public allAvas()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->C:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsun/security/x509/RDN;->avas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public asX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->z:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    sget-object v1, Lsun/security/x509/X500Name;->s:Ljava/lang/reflect/Constructor;

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    iput-object v0, p0, Lsun/security/x509/X500Name;->z:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lsun/security/x509/X500Name;->z:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public avaSize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p1, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v1, v1

    .line 2
    iget-object v2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-ge v2, v1, :cond_2

    move v1, v2

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 3
    iget-object v4, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v4, v4, v3

    iget-object v5, p1, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v3, :cond_4

    return-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_4
    new-array p1, v3, [Lsun/security/x509/RDN;

    :goto_1
    if-ge v2, v3, :cond_5

    .line 5
    iget-object v1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v1, v1, v2

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_5
    :try_start_0
    new-instance v1, Lsun/security/x509/X500Name;

    invoke-direct {v1, p1}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_6
    :goto_2
    return-object v0
.end method

.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-nez p1, :cond_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_2

    .line 1
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lsun/security/x509/X500Name;

    .line 3
    invoke-virtual {p1, p0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 4
    :cond_2
    iget-object v2, p1, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_3

    :goto_1
    const/4 v0, 0x2

    goto :goto_2

    .line 5
    :cond_3
    iget-object v2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-direct {p1, p0}, Lsun/security/x509/X500Name;->i(Lsun/security/x509/X500Name;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->i(Lsun/security/x509/X500Name;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    :goto_2
    return v0
.end method

.method public emit(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lsun/security/x509/RDN;->a(Lsun/security/util/DerOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    .line 4
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lsun/security/x509/X500Name;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lsun/security/x509/X500Name;

    .line 3
    iget-object v0, p0, Lsun/security/x509/X500Name;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p1, Lsun/security/x509/X500Name;->x:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_2
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v0, v0

    .line 6
    iget-object v2, p1, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 7
    iget-object v3, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v3, v3, v2

    .line 8
    iget-object v4, p1, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v4, v4, v2

    .line 9
    iget-object v3, v3, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    array-length v3, v3

    iget-object v4, v4, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    array-length v4, v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    if-eqz v0, :cond_1

    .line 2
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lsun/security/x509/RDN;->b(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCommonName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDNQualifier()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncodedInternal()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->A:[B

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 3
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 5
    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lsun/security/x509/RDN;->a(Lsun/security/util/DerOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    .line 6
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->A:[B

    .line 8
    :cond_1
    iget-object v0, p0, Lsun/security/x509/X500Name;->A:[B

    return-object v0
.end method

.method public getGeneration()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrganizationalUnit()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC1779Name()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lsun/security/x509/X500Name;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/security/x509/X500Name;->v:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRFC2253CanonicalName()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v0, v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lsun/security/x509/X500Name;->x:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    iget-object v1, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 6
    iget-object v3, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_2

    const/16 v3, 0x2c

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getRFC2253Name()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lsun/security/x509/X500Name;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/security/x509/X500Name;->w:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getState()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSurname()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->c(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->g(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2
    iget-object v4, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    aget-object v4, v4, v3

    iget-object v4, v4, Lsun/security/x509/RDN;->a:[Lsun/security/x509/AVA;

    array-length v4, v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public rdns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->B:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lsun/security/x509/X500Name;->B:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v0, v0

    return v0
.end method

.method public subtreeDepth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->y:[Lsun/security/x509/RDN;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/X500Name;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lsun/security/x509/X500Name;->d()V

    .line 3
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X500Name;->u:Ljava/lang/String;

    return-object v0
.end method
