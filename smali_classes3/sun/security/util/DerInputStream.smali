.class public Lsun/security/util/DerInputStream;
.super Ljava/lang/Object;
.source "DerInputStream.java"


# instance fields
.field a:Lsun/security/util/b;

.field public tag:B


# direct methods
.method constructor <init>(Lsun/security/util/b;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    const v0, 0x7fffffff

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerInputStream;->e([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lsun/security/util/DerInputStream;->e([BII)V

    return-void
.end method

.method static c(ILjava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-ltz p0, :cond_4

    const/4 v0, 0x4

    if-le p0, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_3

    shl-int/lit8 v0, v0, 0x8

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_1
    return p0

    .line 2
    :cond_4
    :goto_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DerInputStream.getLength(): lengthTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez p0, :cond_5

    const-string p0, "incorrect DER encoding."

    goto :goto_3

    :cond_5
    const-string p0, "too big."

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static d(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p0}, Lsun/security/util/DerInputStream;->c(ILjava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method private e([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x2

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 2
    aget-byte v0, p1, v0

    invoke-static {v0}, Lsun/security/util/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance p1, Lsun/security/util/a;

    invoke-direct {p1}, Lsun/security/util/a;-><init>()V

    .line 6
    new-instance p2, Lsun/security/util/b;

    invoke-virtual {p1, v0}, Lsun/security/util/a;->a([B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lsun/security/util/b;-><init>([B)V

    iput-object p2, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lsun/security/util/b;

    invoke-direct {v0, p1, p2, p3}, Lsun/security/util/b;-><init>([BII)V

    iput-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    .line 8
    :goto_0
    iget-object p1, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Encoding bytes too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const-string v1, " string"

    if-ne v0, p1, :cond_2

    .line 2
    iget-object p1, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {p1}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result p1

    .line 3
    new-array v0, p1, [B

    if-eqz p1, :cond_1

    .line 4
    iget-object v2, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "short read of DER "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DER input not a "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0
.end method

.method b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public getBMPString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1e

    const-string v1, "BMP"

    const-string v2, "UnicodeBigUnmarked"

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->f(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/util/b;->c(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitString()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/b;->e(I)[B

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input not an bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "short read of DER octet string"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>(Lsun/security/util/b;)V

    return-object v0
.end method

.method public getEnumerated()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/b;->g(I)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Enumerated tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGeneralString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1b

    const-string v1, "General"

    const-string v2, "ASCII"

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->f(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/b;->f(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, GeneralizedTime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIA5String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x16

    const-string v1, "IA5"

    const-string v2, "ASCII"

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->f(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteger()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/b;->g(I)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getNull, bad data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputStream;)V

    return-object v0
.end method

.method public getOctetString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v0

    .line 3
    new-array v1, v0, [B

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of DER octet string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v1

    .line 6
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input not an octet string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositiveBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/b;->c(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrintableString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x13

    const-string v1, "Printable"

    const-string v2, "ASCII"

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->f(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSequence(I)[Lsun/security/util/DerValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputStream;->readVector(I)[Lsun/security/util/DerValue;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Sequence tag error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSet(I)[Lsun/security/util/DerValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputStream;->readVector(I)[Lsun/security/util/DerValue;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Set tag error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSet(IZ)[Lsun/security/util/DerValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    if-nez p2, :cond_1

    const/16 p2, 0x31

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Set tag error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputStream;->readVector(I)[Lsun/security/util/DerValue;

    move-result-object p1

    return-object p1
.end method

.method public getT61String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    const-string v1, "T61"

    const-string v2, "ISO-8859-1"

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->f(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/b;->i(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, UTCtime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUTF8String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    const-string v1, "UTF-8"

    const-string v2, "UTF8"

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lsun/security/util/DerInputStream;->f(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v0, 0x8

    .line 3
    iget-object v2, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    sub-int/2addr v1, v2

    .line 4
    new-array v2, v0, [B

    if-eqz v0, :cond_1

    .line 5
    iget-object v3, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of DER bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v1, v2}, Lsun/security/util/BitArray;-><init>(I[B)V

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input not a bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    return-void
.end method

.method public peekByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Lsun/security/util/b;->k()I

    move-result v0

    return v0
.end method

.method protected readVector(I)[Lsun/security/util/DerValue;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0xff

    .line 2
    iget-object v2, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v1, v2}, Lsun/security/util/DerInputStream;->c(ILjava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 3
    iget-object v1, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    const/4 v4, 0x2

    add-int/lit8 v5, v1, 0x2

    .line 4
    new-array v5, v5, [B

    .line 5
    iget-byte v6, p0, Lsun/security/util/DerInputStream;->tag:B

    aput-byte v6, v5, v3

    .line 6
    aput-byte v0, v5, v2

    .line 7
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v6, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    invoke-virtual {v0, v5, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 10
    new-instance v0, Lsun/security/util/a;

    invoke-direct {v0}, Lsun/security/util/a;-><init>()V

    .line 11
    new-instance v1, Lsun/security/util/b;

    invoke-virtual {v0, v5}, Lsun/security/util/a;->a([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lsun/security/util/b;-><init>([B)V

    iput-object v1, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    .line 12
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v1

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Indefinite length encoding not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    new-array p1, v3, [Lsun/security/util/DerValue;

    return-object p1

    .line 15
    :cond_2
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-ne v0, v1, :cond_3

    move-object v0, p0

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0, v1, v2}, Lsun/security/util/DerInputStream;->subStream(IZ)Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 17
    :goto_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, p1}, Ljava/util/Vector;-><init>(I)V

    .line 18
    :cond_4
    new-instance p1, Lsun/security/util/DerValue;

    iget-object v2, v0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-direct {p1, v2}, Lsun/security/util/DerValue;-><init>(Lsun/security/util/b;)V

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result p1

    if-gtz p1, :cond_4

    .line 21
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result p1

    if-nez p1, :cond_6

    .line 22
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    .line 23
    new-array v0, p1, [Lsun/security/util/DerValue;

    :goto_2
    if-ge v3, p1, :cond_5

    .line 24
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/util/DerValue;

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v0

    .line 25
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "extra data at end of vector"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    return-void
.end method

.method public subStream(IZ)Lsun/security/util/DerInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Lsun/security/util/b;->a()Lsun/security/util/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lsun/security/util/b;->m(I)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 4
    :cond_0
    new-instance p1, Lsun/security/util/DerInputStream;

    invoke-direct {p1, v0}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/b;)V

    return-object p1
.end method

.method public toByteArray()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/util/DerInputStream;->a:Lsun/security/util/b;

    invoke-virtual {v0}, Lsun/security/util/b;->l()[B

    move-result-object v0

    return-object v0
.end method
