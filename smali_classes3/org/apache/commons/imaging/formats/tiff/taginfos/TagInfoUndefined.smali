.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;
.source "TagInfoUndefined.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method
