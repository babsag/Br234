.class public Lsun/security/x509/AVA;
.super Ljava/lang/Object;
.source "AVA.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final a:Lsun/security/util/Debug;

.field private static final b:Z


# instance fields
.field final c:Lsun/security/util/ObjectIdentifier;

.field final d:Lsun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "x509"

    const-string v1, "\t[AVA]"

    .line 1
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AVA;->a:Lsun/security/util/Debug;

    .line 2
    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string v1, "com.sun.security.preserveOldDCEncoding"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/security/x509/AVA;->b:Z

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "I",
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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v1, "Incorrect AVA format"

    .line 8
    invoke-static {p1, v1}, Lsun/security/x509/AVA;->i(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_5

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lsun/security/x509/b;->b(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;

    move-result-object p3

    iput-object p3, p0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    const/4 p3, 0x0

    .line 10
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x20

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p3

    if-eq p3, v2, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect AVA RFC2253 format - leading space must be escaped"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p3

    if-eq p3, v2, :cond_1

    const/16 v1, 0xa

    if-eq p3, v1, :cond_1

    :goto_1
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    .line 14
    new-instance p1, Lsun/security/util/DerValue;

    const-string p2, ""

    invoke-direct {p1, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    return-void

    :cond_2
    const/16 v1, 0x23

    if-ne p3, v1, :cond_3

    .line 15
    invoke-static {p1, p2}, Lsun/security/x509/AVA;->f(Ljava/io/Reader;I)Lsun/security/util/DerValue;

    move-result-object p1

    iput-object p1, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    goto :goto_2

    :cond_3
    const/16 v1, 0x22

    if-ne p3, v1, :cond_4

    if-eq p2, v3, :cond_4

    .line 16
    invoke-direct {p0, p1, v0}, Lsun/security/x509/AVA;->g(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object p1

    iput-object p1, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    goto :goto_2

    .line 17
    :cond_4
    invoke-direct {p0, p1, p3, p2, v0}, Lsun/security/x509/AVA;->h(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object p1

    iput-object p1, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    :goto_2
    return-void

    :cond_5
    int-to-char v1, v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
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

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    return-void
.end method

.method constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 21
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->h(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    .line 22
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    .line 23
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVA, extra bytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 25
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "AVA not a sequence"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    .line 3
    iput-object p2, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method private static a(ILjava/io/Reader;)Ljava/lang/Byte;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-char p0, p0

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v0, "unexpected EOF - escaped hex value must include two valid digits"

    .line 2
    invoke-static {p1, v0}, Lsun/security/x509/AVA;->i(Ljava/io/Reader;Ljava/lang/String;)I

    move-result p1

    int-to-char p1, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v0, 0x10

    .line 4
    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p0

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    .line 6
    new-instance v0, Ljava/lang/Byte;

    shl-int/lit8 p0, p0, 0x4

    add-int/2addr p0, p1

    int-to-byte p0, p0

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "escaped hex value must include two valid digits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF8"

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method private static d(Lsun/security/util/DerValue;Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x13

    const/16 v3, 0xc

    if-eqz p1, :cond_1

    .line 1
    iget-byte p0, p0, Lsun/security/util/DerValue;->tag:B

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    return v1

    .line 2
    :cond_1
    iget-byte p0, p0, Lsun/security/util/DerValue;->tag:B

    if-eq p0, v3, :cond_2

    const/16 p1, 0x16

    if-eq p0, p1, :cond_2

    const/16 p1, 0x1b

    if-eq p0, p1, :cond_2

    const/16 p1, 0x1e

    if-eq p0, p1, :cond_2

    if-eq p0, v2, :cond_2

    const/16 p1, 0x14

    if-eq p0, p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private static e(II)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    const/4 v2, 0x0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 p1, 0x2b

    if-eq p0, p1, :cond_2

    const/16 p1, 0x2c

    if-eq p0, p1, :cond_2

    return v2

    :cond_0
    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static f(Ljava/io/Reader;I)Lsun/security/util/DerValue;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v3

    .line 3
    invoke-static {v3, p1}, Lsun/security/x509/AVA;->e(II)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    .line 4
    rem-int/lit8 v1, v1, 0x2

    if-eq v1, v5, :cond_0

    .line 5
    new-instance p0, Lsun/security/util/DerValue;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "AVA parse, odd number of hex digits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "AVA parse, zero hex digits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    int-to-char v3, v3

    .line 8
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    .line 9
    rem-int/lit8 v3, v1, 0x2

    if-ne v3, v5, :cond_3

    mul-int/lit8 v2, v2, 0x10

    int-to-byte v3, v4

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_3
    int-to-byte v2, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AVA parse, invalid hex digit: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private g(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Quoted string did not end in quote"

    .line 1
    invoke-static {p1, v0}, Lsun/security/x509/AVA;->i(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x22

    if-eq v1, v4, :cond_4

    const/16 v5, 0x5c

    if-ne v1, v5, :cond_2

    .line 3
    invoke-static {p1, v0}, Lsun/security/x509/AVA;->i(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-static {v1, p1}, Lsun/security/x509/AVA;->a(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    .line 5
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    int-to-char v4, v1

    const-string v5, ",+=\n<>#;"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid escaped character in AVA: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 10
    invoke-static {v2}, Lsun/security/x509/AVA;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    int-to-char v1, v1

    .line 13
    invoke-static {v1}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v4

    and-int/2addr v3, v4

    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p1, v0}, Lsun/security/x509/AVA;->i(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 17
    invoke-static {v2}, Lsun/security/x509/AVA;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 20
    :cond_5
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/4 p1, -0x1

    if-ne v0, p1, :cond_9

    .line 21
    iget-object p1, p0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1, v0}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 22
    invoke-virtual {p1, v0}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lsun/security/x509/AVA;->b:Z

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    .line 23
    new-instance p1, Lsun/security/util/DerValue;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 24
    :cond_7
    new-instance p1, Lsun/security/util/DerValue;

    const/16 v0, 0xc

    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object p1

    .line 26
    :cond_8
    :goto_2
    new-instance p1, Lsun/security/util/DerValue;

    const/16 v0, 0x16

    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object p1

    .line 28
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "AVA had characters other than whitespace after terminating quote"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    move/from16 v7, p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_0
    const-string v12, ",+\"\\<>;"

    const/16 v13, 0x5c

    const/4 v15, -0x1

    if-ne v7, v13, :cond_a

    const-string v7, "Invalid trailing backslash"

    .line 2
    invoke-static {v1, v7}, Lsun/security/x509/AVA;->i(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v7

    .line 3
    invoke-static {v7, v1}, Lsun/security/x509/AVA;->a(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    move-result v6

    move v7, v6

    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_0
    const-string v6, "\'"

    const-string v11, "Invalid escaped character in AVA: \'"

    if-ne v2, v5, :cond_1

    int-to-char v5, v7

    const-string v14, ",=\n+<>#;\\\" "

    .line 6
    invoke-virtual {v14, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_2

    :cond_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    int-to-char v5, v7

    const-string v14, ",+=\n<>#;"

    .line 7
    invoke-virtual {v14, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v15, :cond_3

    if-eq v7, v13, :cond_3

    const/16 v5, 0x22

    if-ne v7, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    const/4 v5, 0x3

    if-ne v2, v5, :cond_9

    const/16 v5, 0x20

    if-ne v7, v5, :cond_5

    if-nez v10, :cond_9

    .line 9
    invoke-static/range {p1 .. p1}, Lsun/security/x509/AVA;->l(Ljava/io/Reader;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid escaped space character in AVA.  Only a leading or trailing space character can be escaped."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/16 v5, 0x23

    if-ne v7, v5, :cond_7

    if-eqz v10, :cond_6

    goto :goto_2

    .line 11
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid escaped \'#\' character in AVA.  Only a leading \'#\' can be escaped."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    int-to-char v5, v7

    .line 12
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v15, :cond_8

    goto :goto_2

    .line 13
    :cond_8
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_2
    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    const/4 v5, 0x3

    if-ne v2, v5, :cond_c

    int-to-char v5, v7

    .line 14
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v15, :cond_b

    goto :goto_3

    .line 15
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' in AVA appears without escape"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_3
    const/4 v5, 0x0

    .line 16
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const-string v10, " "

    if-lez v6, :cond_e

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v9, :cond_d

    .line 17
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 18
    :cond_d
    invoke-static {v4}, Lsun/security/x509/AVA;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v9, 0x0

    :cond_e
    int-to-char v6, v7

    .line 21
    invoke-static {v6}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v11

    and-int/2addr v8, v11

    const/16 v11, 0x20

    if-ne v7, v11, :cond_f

    if-nez v5, :cond_f

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v9, :cond_10

    .line 22
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 23
    :cond_10
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    .line 24
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    move-result v5

    move v7, v5

    .line 25
    :goto_8
    invoke-static {v7, v2}, Lsun/security/x509/AVA;->e(II)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x3

    if-ne v2, v5, :cond_12

    if-gtz v9, :cond_11

    goto :goto_9

    .line 26
    :cond_11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incorrect AVA RFC2253 format - trailing space must be escaped"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_12
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 28
    invoke-static {v4}, Lsun/security/x509/AVA;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 31
    :cond_13
    iget-object v1, v0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 32
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-boolean v1, Lsun/security/x509/AVA;->b:Z

    if-nez v1, :cond_14

    goto :goto_a

    :cond_14
    if-eqz v8, :cond_15

    .line 33
    new-instance v1, Lsun/security/util/DerValue;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 34
    :cond_15
    new-instance v1, Lsun/security/util/DerValue;

    const/16 v2, 0xc

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v1

    .line 35
    :cond_16
    :goto_a
    new-instance v1, Lsun/security/util/DerValue;

    const/16 v2, 0x16

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v1

    :cond_17
    const/4 v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private static i(Ljava/io/Reader;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j(ILjava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    invoke-static {v0, p1, p2}, Lsun/security/x509/b;->a(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v0, "\""

    const-string v1, "0123456789ABCDEF"

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :try_start_0
    iget-object p1, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p1

    const/16 v0, 0x23

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_10

    .line 8
    aget-byte v0, p1, v3

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    aget-byte v0, p1, v3

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 11
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    const/16 v9, 0x20

    const/4 v10, 0x1

    if-ge v4, v7, :cond_c

    .line 12
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 13
    invoke-static {v7}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ",+=\n<>#;\\\""

    const/16 v13, 0x5c

    if-nez v11, :cond_4

    .line 14
    :try_start_1
    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_1

    goto :goto_3

    .line 15
    :cond_1
    sget-object v6, Lsun/security/x509/AVA;->a:Lsun/security/util/Debug;

    if-eqz v6, :cond_2

    const-string v6, "ava"

    invoke-static {v6}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 16
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x0

    .line 17
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_3

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    aget-byte v8, v6, v7

    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x10

    .line 20
    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 21
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    aget-byte v8, v6, v7

    and-int/lit8 v8, v8, 0xf

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 24
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 25
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v6, 0x0

    goto :goto_5

    :cond_4
    :goto_3
    if-nez v5, :cond_7

    if-nez v4, :cond_5

    if-eq v7, v9, :cond_6

    if-eq v7, v8, :cond_6

    .line 26
    :cond_5
    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_7

    :cond_6
    const/4 v5, 0x1

    :cond_7
    if-eq v7, v9, :cond_a

    if-eq v7, v8, :cond_a

    const/16 v6, 0x22

    if-eq v7, v6, :cond_8

    if-ne v7, v13, :cond_9

    .line 27
    :cond_8
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    if-nez v5, :cond_b

    if-eqz v6, :cond_b

    const/4 v5, 0x1

    .line 28
    :cond_b
    :goto_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v10

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 29
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_e

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v10

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    if-eq p1, v9, :cond_d

    if-ne p1, v8, :cond_e

    :cond_d
    const/4 v5, 0x1

    :cond_e
    if-eqz v5, :cond_f

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 32
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    :cond_10
    :goto_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 34
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DER Value conversion"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static l(Ljava/io/Reader;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x270f

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/Reader;->mark(I)V

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x20

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_4

    .line 4
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_4
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    return v1
.end method


# virtual methods
.method c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lsun/security/x509/b;->c(Lsun/security/util/ObjectIdentifier;I)Z

    move-result v0

    return v0
.end method

.method public derEncode(Ljava/io/OutputStream;)V
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
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 3
    iget-object v2, p0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 4
    iget-object v2, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    const/16 v2, 0x30

    .line 5
    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lsun/security/x509/AVA;->derEncode(Ljava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lsun/security/x509/AVA;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lsun/security/x509/AVA;

    .line 3
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    return-object v0
.end method

.method public getObjectIdentifier()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/AVA;->c:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AVA string is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AVA error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toRFC1779String()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC1779String(Ljava/util/Map;)Ljava/lang/String;
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

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lsun/security/x509/AVA;->j(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/security/x509/AVA;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toRFC2253CanonicalString()Ljava/lang/String;
    .locals 15

    const-string v0, "UTF8"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lsun/security/x509/AVA;->j(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    const-string v5, "DER Value conversion"

    const/16 v6, 0x10

    const/16 v7, 0x30

    if-lt v3, v7, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v7, 0x39

    if-le v3, v7, :cond_1

    :cond_0
    iget-object v3, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    const/4 v7, 0x1

    .line 5
    invoke-static {v3, v7}, Lsun/security/x509/AVA;->d(Lsun/security/util/DerValue;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    :cond_1
    :try_start_0
    iget-object v0, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_d

    .line 9
    aget-byte v3, v0, v2

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 10
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 11
    invoke-static {v3, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/String;

    iget-object v8, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v8

    invoke-direct {v3, v8, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 15
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_c

    .line 16
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 17
    invoke-static {v11}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v12

    const/16 v13, 0x5c

    const-string v14, ",+<>;\"\\"

    if-nez v12, :cond_5

    .line 18
    invoke-virtual {v14, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_5

    if-nez v9, :cond_3

    if-ne v11, v4, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    sget-object v10, Lsun/security/x509/AVA;->a:Lsun/security/util/Debug;

    if-eqz v10, :cond_4

    const-string v10, "ava"

    invoke-static {v10}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 20
    :try_start_2
    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v11, 0x0

    .line 21
    :goto_2
    array-length v12, v10

    if-ge v11, v12, :cond_9

    .line 22
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    aget-byte v12, v10, v11

    ushr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    .line 24
    invoke-static {v12, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v12

    .line 25
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    aget-byte v12, v10, v11

    and-int/lit8 v12, v12, 0xf

    .line 27
    invoke-static {v12, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v12

    .line 28
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 29
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_4
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    :goto_3
    if-nez v9, :cond_6

    if-eq v11, v4, :cond_7

    .line 31
    :cond_6
    invoke-virtual {v14, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_8

    .line 32
    :cond_7
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    :cond_8
    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_a

    .line 34
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    const/4 v10, 0x0

    goto :goto_5

    :cond_a
    if-nez v10, :cond_b

    .line 35
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    :cond_b
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 36
    :cond_c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toRFC2253String()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
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

    const-string v0, "UTF8"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x3

    .line 3
    invoke-direct {p0, v2, p1}, Lsun/security/x509/AVA;->j(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const-string v3, "DER Value conversion"

    const/16 v4, 0x10

    const/16 v5, 0x30

    if-lt v2, v5, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v5, 0x39

    if-le v2, v5, :cond_1

    :cond_0
    iget-object v2, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    .line 6
    invoke-static {v2, p1}, Lsun/security/x509/AVA;->d(Lsun/security/util/DerValue;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    :cond_1
    :try_start_0
    iget-object v0, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x23

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_10

    .line 10
    aget-byte v2, v0, p1

    ushr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    .line 12
    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lsun/security/x509/AVA;->d:Lsun/security/util/DerValue;

    invoke-virtual {v5}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v5

    invoke-direct {v2, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    .line 16
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x5c

    if-ge v6, v7, :cond_8

    .line 17
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 18
    invoke-static {v7}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v9

    const-string v10, ",=+<>#;\"\\"

    if-nez v9, :cond_5

    .line 19
    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_3

    goto :goto_3

    .line 20
    :cond_3
    sget-object v9, Lsun/security/x509/AVA;->a:Lsun/security/util/Debug;

    if-eqz v9, :cond_4

    const-string v9, "ava"

    invoke-static {v9}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 21
    :try_start_2
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v9, 0x0

    .line 22
    :goto_2
    array-length v10, v7

    if-ge v9, v10, :cond_7

    .line 23
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    aget-byte v10, v7, v9

    ushr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    .line 25
    invoke-static {v10, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    .line 26
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    aget-byte v10, v7, v9

    and-int/lit8 v10, v10, 0xf

    .line 28
    invoke-static {v10, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    .line 29
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 30
    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 32
    :cond_5
    :goto_3
    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_6

    .line 33
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    :cond_6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 35
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 37
    :goto_5
    array-length v4, v0

    const/16 v5, 0xd

    const/16 v6, 0x20

    if-ge v3, v4, :cond_a

    .line 38
    aget-char v4, v0, v3

    if-eq v4, v6, :cond_9

    aget-char v4, v0, v3

    if-eq v4, v5, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 39
    :cond_a
    :goto_6
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_7
    if-ltz v4, :cond_c

    .line 40
    aget-char v7, v0, v4

    if-eq v7, v6, :cond_b

    aget-char v7, v0, v4

    if-eq v7, v5, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 41
    :cond_c
    :goto_8
    array-length v5, v0

    if-ge p1, v5, :cond_f

    .line 42
    aget-char v5, v0, p1

    if-lt p1, v3, :cond_d

    if-le p1, v4, :cond_e

    .line 43
    :cond_d
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    :cond_e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 45
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 47
    :catch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/AVA;->j(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
