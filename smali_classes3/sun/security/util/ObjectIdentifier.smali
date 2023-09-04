.class public final Lsun/security/util/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[I

.field private b:I

.field private volatile transient c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsun/security/util/ObjectIdentifier;->b:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x2e

    .line 3
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4
    iget v2, p0, Lsun/security/util/ObjectIdentifier;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/security/util/ObjectIdentifier;->b:I

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    .line 6
    new-array v1, v1, [I

    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    const/4 v1, 0x0

    .line 7
    :goto_1
    :try_start_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 8
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    add-int/lit8 v0, v4, 0x1

    move v1, v6

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    iget v1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    invoke-direct {p0, v0, v1}, Lsun/security/util/ObjectIdentifier;->a([II)V

    .line 13
    iput-object p1, p0, Lsun/security/util/ObjectIdentifier;->c:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObjectIdentifier() -- Invalid format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->a()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 22
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->b()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 23
    invoke-direct {p0, p1, v0}, Lsun/security/util/ObjectIdentifier;->d(Lsun/security/util/DerInputStream;I)V

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "ObjectIdentifier() -- not enough data"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObjectIdentifier() -- data isn\'t an object ID (tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lsun/security/util/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/b;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/util/ObjectIdentifier;->d(Lsun/security/util/DerInputStream;I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lsun/security/util/ObjectIdentifier;->a([II)V

    .line 18
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    .line 19
    array-length p1, p1

    iput p1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    return-void
.end method

.method private constructor <init>([IZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    .line 30
    array-length p1, p1

    iput p1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    return-void
.end method

.method private a([II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-lt p2, v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p2, :cond_1

    .line 1
    aget v4, p1, v2

    if-ltz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ObjectIdentifier() -- oid component #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " must be non-negative "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    aget p2, p1, v1

    if-gt p2, v0, :cond_4

    .line 4
    aget p2, p1, v1

    if-ge p2, v0, :cond_3

    aget p1, p1, v3

    const/16 p2, 0x27

    if-gt p1, p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "ObjectIdentifier() -- Second oid component is invalid "

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 6
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "ObjectIdentifier() -- First oid component is invalid "

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "ObjectIdentifier() -- Must be at least two oid components "

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c(Lsun/security/util/DerInputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    shl-int/lit8 v1, v1, 0x7

    .line 1
    invoke-virtual {p0}, Lsun/security/util/DerInputStream;->a()I

    move-result v2

    if-nez v0, :cond_1

    const/16 v3, 0x80

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ObjectIdentifier() -- sub component starts with 0x80"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    and-int/lit8 v3, v2, 0x7f

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ObjectIdentifier() -- component value too big"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private d(Lsun/security/util/DerInputStream;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    iput-object v1, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    const/4 v1, 0x0

    iput v1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-le v4, p2, :cond_5

    .line 3
    invoke-static {p1}, Lsun/security/util/ObjectIdentifier;->c(Lsun/security/util/DerInputStream;)I

    move-result v4

    if-ltz v4, :cond_4

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    const/16 v5, 0x28

    if-ge v4, v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    const/16 v5, 0x50

    if-ge v4, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    mul-int/lit8 v6, v5, 0x28

    sub-int/2addr v4, v6

    .line 4
    iget-object v6, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    aput v5, v6, v1

    .line 5
    aput v4, v6, v2

    .line 6
    iput v3, p0, Lsun/security/util/ObjectIdentifier;->b:I

    const/4 v3, 0x0

    goto :goto_0

    .line 7
    :cond_2
    iget v5, p0, Lsun/security/util/ObjectIdentifier;->b:I

    iget-object v6, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    array-length v7, v6

    if-lt v5, v7, :cond_3

    .line 8
    array-length v5, v6

    add-int/2addr v5, v0

    new-array v5, v5, [I

    .line 9
    array-length v7, v6

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput-object v5, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    .line 11
    :cond_3
    iget-object v5, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    iget v6, p0, Lsun/security/util/ObjectIdentifier;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lsun/security/util/ObjectIdentifier;->b:I

    aput v4, v5, v6

    goto :goto_0

    .line 12
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "ObjectIdentifier() -- component values must be nonnegative"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    iget v1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    invoke-direct {p0, v0, v1}, Lsun/security/util/ObjectIdentifier;->a([II)V

    .line 14
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result p1

    if-ne p1, p2, :cond_6

    return-void

    .line 15
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "ObjectIdentifier() -- malformed input data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static e(Lsun/security/util/DerOutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    and-int/lit8 v4, p1, 0x7f

    int-to-byte v4, v4

    .line 1
    aput-byte v4, v1, v3

    ushr-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v3, :cond_2

    .line 2
    aget-byte p1, v1, v3

    or-int/lit16 p1, p1, 0x80

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3
    :cond_2
    aget-byte p1, v1, v2

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public static newInternal([I)Lsun/security/util/ObjectIdentifier;
    .locals 2

    .line 1
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lsun/security/util/ObjectIdentifier;-><init>([IZ)V

    return-object v0
.end method


# virtual methods
.method b(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    .line 3
    aget v2, v1, v2

    mul-int/lit8 v2, v2, 0x28

    aget v1, v1, v5

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 4
    :cond_0
    aget v2, v1, v2

    mul-int/lit8 v2, v2, 0x28

    aget v1, v1, v5

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lsun/security/util/ObjectIdentifier;->e(Lsun/security/util/DerOutputStream;I)V

    .line 5
    :goto_0
    iget v1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    if-ge v4, v1, :cond_1

    .line 6
    iget-object v1, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    aget v1, v1, v4

    invoke-static {v0, v1}, Lsun/security/util/ObjectIdentifier;->e(Lsun/security/util/DerOutputStream;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    .line 7
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, Lsun/security/util/ObjectIdentifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p1, Lsun/security/util/ObjectIdentifier;

    .line 4
    iget v1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    iget v3, p1, Lsun/security/util/ObjectIdentifier;->b:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lsun/security/util/ObjectIdentifier;->b:I

    if-ge v1, v3, :cond_4

    .line 6
    iget-object v3, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    aget v3, v3, v1

    iget-object v4, p1, Lsun/security/util/ObjectIdentifier;->a:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public equals(Lsun/security/util/ObjectIdentifier;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lsun/security/util/ObjectIdentifier;->b:I

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lsun/security/util/ObjectIdentifier;->b:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    aget v2, v2, v1

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public precedes(Lsun/security/util/ObjectIdentifier;)Z
    .locals 5

    const/4 v0, 0x0

    if-eq p1, p0, :cond_3

    .line 1
    iget v1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    iget v2, p1, Lsun/security/util/ObjectIdentifier;->b:I

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lsun/security/util/ObjectIdentifier;->b:I

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p1, Lsun/security/util/ObjectIdentifier;->a:[I

    aget v2, v2, v1

    iget-object v4, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    aget v4, v4, v1

    if-ge v2, v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/security/util/ObjectIdentifier;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lsun/security/util/ObjectIdentifier;->b:I

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lsun/security/util/ObjectIdentifier;->b:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2e

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    :cond_0
    iget-object v2, p0, Lsun/security/util/ObjectIdentifier;->a:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lsun/security/util/ObjectIdentifier;->c:Ljava/lang/String;

    :cond_2
    return-object v0
.end method
