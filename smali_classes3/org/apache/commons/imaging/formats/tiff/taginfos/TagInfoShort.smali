.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoShort.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 1
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public encodeValue(Ljava/nio/ByteOrder;S)[B
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/nio/ByteOrder;[B)S
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toShort([BLjava/nio/ByteOrder;)S

    move-result p1

    return p1
.end method