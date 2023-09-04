.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeRational.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    .line 5
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRational([BLjava/nio/ByteOrder;Z)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRationals([BLjava/nio/ByteOrder;Z)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p1

    return-object p1
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/apache/commons/imaging/common/RationalNumber;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, [Lorg/apache/commons/imaging/common/RationalNumber;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, [Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/lang/Number;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p1

    .line 8
    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    instance-of v0, p1, [Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, [Ljava/lang/Number;

    .line 11
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    .line 12
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 13
    aget-object v2, p1, v1

    .line 14
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 17
    check-cast p1, [D

    .line 18
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    .line 19
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 20
    aget-wide v2, p1, v1

    .line 21
    invoke-static {v2, v3}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1

    .line 23
    :cond_6
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v0, "Invalid data"

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2
.end method
