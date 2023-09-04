.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeAscii.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :goto_0
    array-length v4, p1

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_1

    .line 3
    aget-byte v4, p1, v2

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, ""

    .line 5
    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    :goto_1
    array-length v7, p1

    if-ge v4, v7, :cond_3

    .line 7
    aget-byte v7, p1, v4

    if-nez v7, :cond_2

    .line 8
    new-instance v7, Ljava/lang/String;

    sub-int v8, v4, v5

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, p1, v5, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v5, v6, 0x1

    .line 9
    aput-object v7, v2, v6

    add-int/lit8 v6, v4, 0x1

    move v10, v6

    move v6, v5

    move v5, v10

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_3
    array-length v4, p1

    if-ge v5, v4, :cond_4

    .line 11
    new-instance v4, Ljava/lang/String;

    array-length v7, p1

    sub-int/2addr v7, v5

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 12
    aput-object v4, v2, v6

    :cond_4
    if-ne v3, v1, :cond_5

    .line 13
    aget-object p1, v2, v0

    return-object p1

    :cond_5
    return-object v2
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    instance-of p2, p1, [B

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, [B

    .line 3
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array v1, p2, [B

    .line 4
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, -0x1

    .line 5
    aput-byte v0, v1, p2

    return-object v1

    .line 6
    :cond_0
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 8
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array v1, p2, [B

    .line 9
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, -0x1

    .line 10
    aput-byte v0, v1, p2

    return-object v1

    .line 11
    :cond_1
    instance-of p2, p1, [Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 12
    check-cast p1, [Ljava/lang/String;

    .line 13
    array-length p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v3, p1, v1

    .line 14
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 15
    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_2
    new-array p2, v2, [B

    .line 17
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, p1, v2

    .line 18
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 19
    array-length v5, v4

    invoke-static {v4, v0, p2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p2

    .line 21
    :cond_4
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown data type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
