.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoAscii.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 1
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/nio/ByteOrder;[B)[Ljava/lang/String;
    .locals 7

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 2
    aget-byte v2, p2, v0

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 3
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    .line 4
    aput-object v1, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_1
    array-length v3, p2

    if-ge p1, v3, :cond_3

    .line 6
    aget-byte v3, p2, p1

    if-nez v3, :cond_2

    .line 7
    new-instance v3, Ljava/lang/String;

    sub-int v4, p1, v1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p2, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v1, v2, 0x1

    .line 8
    aput-object v3, v0, v2

    add-int/lit8 v2, p1, 0x1

    move v6, v2

    move v2, v1

    move v1, v6

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    array-length p1, p2

    if-ge v1, p1, :cond_4

    .line 10
    new-instance p1, Ljava/lang/String;

    array-length v3, p2

    sub-int/2addr v3, v1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 11
    aput-object p1, v0, v2

    :cond_4
    return-object v0
.end method
