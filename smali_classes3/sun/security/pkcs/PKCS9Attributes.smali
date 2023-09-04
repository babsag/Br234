.class public Lsun/security/pkcs/PKCS9Attributes;
.super Ljava/lang/Object;
.source "PKCS9Attributes.java"


# instance fields
.field private final a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/pkcs/PKCS9Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[B

.field private d:Z


# direct methods
.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->d:Z

    .line 13
    iput-boolean p2, p0, Lsun/security/pkcs/PKCS9Attributes;->d:Z

    .line 14
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->b(Lsun/security/util/DerInputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attributes;->c:[B

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attributes;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>([Lsun/security/pkcs/PKCS9Attribute;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->d:Z

    .line 19
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 20
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 21
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    aget-object v3, p1, v0

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PKCSAttribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    .line 24
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " duplicated while constructing PKCS9Attributes."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_1
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->c()[B

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attributes;->c:[B

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attributes;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>([Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->d:Z

    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Ljava/util/Hashtable;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->b:Ljava/util/Hashtable;

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->b:Ljava/util/Hashtable;

    aget-object v2, p1, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attributes;->b:Ljava/util/Hashtable;

    .line 8
    :cond_1
    invoke-direct {p0, p2}, Lsun/security/pkcs/PKCS9Attributes;->b(Lsun/security/util/DerInputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attributes;->c:[B

    return-void
.end method

.method static a([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;
    .locals 4

    .line 1
    array-length v0, p0

    new-array v1, v0, [Lsun/security/util/DerEncoder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget-object v3, p0, v2

    check-cast v3, Lsun/security/util/DerEncoder;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Lsun/security/util/DerInputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    const/16 v0, 0x31

    const/4 v1, 0x0

    .line 3
    aput-byte v0, p1, v1

    .line 4
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v2, v3}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 7
    :try_start_0
    new-instance v4, Lsun/security/pkcs/PKCS9Attribute;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Lsun/security/pkcs/PKCS9Attribute;-><init>(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Lsun/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    .line 9
    iget-object v6, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 10
    iget-object v6, p0, Lsun/security/pkcs/PKCS9Attributes;->b:Ljava/util/Hashtable;

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not permitted in this attribute set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    :goto_1
    iget-object v6, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate PKCS9 attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v3

    .line 15
    iget-boolean v4, p0, Lsun/security/pkcs/PKCS9Attributes;->d:Z

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_3
    throw v3

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->c()[B

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private c()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lsun/security/pkcs/PKCS9Attributes;->a([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;

    move-result-object v1

    const/16 v2, 0x31

    .line 4
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encode(BLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object p1, p0, Lsun/security/pkcs/PKCS9Attributes;->c:[B

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Lsun/security/pkcs/PKCS9Attribute;
    .locals 1

    .line 2
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/security/pkcs/PKCS9Attribute;

    return-object p1
.end method

.method public getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/security/pkcs/PKCS9Attribute;

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not recognized or not supported."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value found for attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributes()[Lsun/security/pkcs/PKCS9Attribute;
    .locals 6

    .line 1
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v1, v0, [Lsun/security/pkcs/PKCS9Attribute;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    :goto_0
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->b:[Lsun/security/util/ObjectIdentifier;

    array-length v5, v4

    if-ge v2, v5, :cond_1

    if-ge v3, v0, :cond_1

    .line 3
    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v4

    aput-object v4, v1, v3

    .line 4
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getDerEncoding()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "PKCS9 Attributes: [\n\t"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 3
    :goto_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->b:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 4
    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v4, ";\n\t"

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :goto_1
    invoke-virtual {v3}, Lsun/security/pkcs/PKCS9Attribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "\n\t] (end PKCS9 Attributes)"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
