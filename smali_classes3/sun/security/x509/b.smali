.class Lsun/security/x509/b;
.super Ljava/lang/Object;
.source "AVA.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/x509/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsun/security/x509/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lsun/security/util/ObjectIdentifier;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/b;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/b;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "CN"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v3}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 4
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "C"

    invoke-direct {v0, v2, v1, v3, v3}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 5
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "L"

    invoke-direct {v0, v2, v1, v3, v3}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 6
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "S"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 7
    new-instance v0, Lsun/security/x509/b;

    const-string v2, "ST"

    invoke-direct {v0, v2, v1, v3, v3}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 8
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "O"

    invoke-direct {v0, v2, v1, v3, v3}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 9
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "OU"

    invoke-direct {v0, v2, v1, v3, v3}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 10
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "T"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 11
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "IP"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 12
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "STREET"

    invoke-direct {v0, v2, v1, v3, v3}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 13
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    const-string v2, "DC"

    invoke-direct {v0, v2, v1, v4, v3}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 14
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    const-string v2, "DNQUALIFIER"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 15
    new-instance v0, Lsun/security/x509/b;

    const-string v2, "DNQ"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 16
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SURNAME"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 17
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    const-string v2, "GIVENNAME"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 18
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    const-string v2, "INITIALS"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 19
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    const-string v2, "GENERATION"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 20
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    const-string v2, "EMAIL"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 21
    new-instance v0, Lsun/security/x509/b;

    const-string v2, "EMAILADDRESS"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 22
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "UID"

    invoke-direct {v0, v2, v1, v4, v3}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 23
    new-instance v0, Lsun/security/x509/b;

    sget-object v1, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SERIALNUMBER"

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/b;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/security/x509/b;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lsun/security/x509/b;->d:Lsun/security/util/ObjectIdentifier;

    .line 4
    iput-boolean p3, p0, Lsun/security/x509/b;->e:Z

    .line 5
    iput-boolean p4, p0, Lsun/security/x509/b;->f:Z

    .line 6
    sget-object p3, Lsun/security/x509/b;->a:Ljava/util/Map;

    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p2, Lsun/security/x509/b;->b:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/ObjectIdentifier;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 3
    sget-object p2, Lsun/security/x509/b;->a:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/security/x509/b;

    if-eqz p0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lsun/security/x509/b;->d(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p0, p0, Lsun/security/x509/b;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    return-object v0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "OID."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_a

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x41

    if-lt p1, p2, :cond_9

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_9

    const/16 v1, 0x61

    const/16 v2, 0x5a

    if-le p1, v2, :cond_3

    if-lt p1, v1, :cond_9

    :cond_3
    const/4 p1, 0x1

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_8

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, p2, :cond_4

    if-gt v3, v0, :cond_4

    if-le v3, v2, :cond_6

    if-ge v3, v1, :cond_6

    :cond_4
    const/16 v4, 0x30

    if-lt v3, v4, :cond_5

    const/16 v4, 0x39

    if-le v3, v4, :cond_6

    :cond_5
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_7

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 12
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyword character is not a letter, digit, or underscore"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-object p0

    .line 13
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyword does not start with letter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyword cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lsun/security/util/ObjectIdentifier;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string v1, " "

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid leading or trailing space in keyword \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_8

    .line 6
    sget-object p2, Lsun/security/x509/b;->b:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsun/security/x509/b;

    if-eqz p2, :cond_2

    .line 7
    invoke-direct {p2, p1}, Lsun/security/x509/b;->d(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object p0, p2, Lsun/security/x509/b;->d:Lsun/security/util/ObjectIdentifier;

    return-object p0

    :cond_2
    const/4 p2, 0x2

    const/4 v1, 0x4

    const-string v2, "OID."

    const/4 v3, 0x1

    if-ne p1, p2, :cond_4

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 11
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid RFC1779 keyword: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-ne p1, v3, :cond_5

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x30

    if-lt p1, v1, :cond_6

    const/16 v1, 0x39

    if-gt p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_7

    .line 16
    new-instance p1, Lsun/security/util/ObjectIdentifier;

    invoke-direct {p1, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 17
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid keyword \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_8
    new-instance p0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, p2}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method static c(Lsun/security/util/ObjectIdentifier;I)Z
    .locals 1

    .line 1
    sget-object v0, Lsun/security/x509/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/security/x509/b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/b;->d(I)Z

    move-result p0

    return p0
.end method

.method private d(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-boolean p1, p0, Lsun/security/x509/b;->f:Z

    return p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid standard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-boolean p1, p0, Lsun/security/x509/b;->e:Z

    return p1

    :cond_2
    return v0
.end method
