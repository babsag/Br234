.class public final Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoGpsText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;
    }
.end annotation


# static fields
.field private static final b:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

.field private static final c:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

.field private static final d:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

.field private static final e:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

.field private static final f:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

.field private static final g:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    const/16 v1, 0x8

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const-string v3, "US-ASCII"

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->b:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    .line 2
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    const-string v4, "JIS"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;-><init>([BLjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->c:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    .line 3
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    new-array v4, v1, [B

    fill-array-data v4, :array_2

    const-string v5, "UTF-16LE"

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;-><init>([BLjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->d:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    .line 4
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    new-array v5, v1, [B

    fill-array-data v5, :array_3

    const-string v6, "UTF-16BE"

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;-><init>([BLjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->e:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    .line 5
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, v1, v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;-><init>([BLjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->f:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aput-object v5, v1, v0

    .line 6
    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->g:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 1
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 3
    :try_start_0
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->b:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    array-length p2, v0

    iget-object p3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->a:[B

    array-length v1, p3

    add-int/2addr p2, v1

    new-array p2, p2, [B

    .line 7
    array-length v1, p3

    invoke-static {p3, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->a:[B

    array-length p1, p1

    array-length p3, v0

    invoke-static {v0, v2, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 9
    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, p1, :cond_1

    .line 10
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->e:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->d:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    .line 12
    :goto_0
    iget-object p3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 13
    array-length p3, p2

    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->a:[B

    array-length v1, v0

    add-int/2addr p3, v1

    new-array p3, p3, [B

    .line 14
    array-length v1, v0

    invoke-static {v0, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->a:[B

    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v2, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 17
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p3, "GPS text value not String"

    invoke-direct {p1, p3, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 3
    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 6
    :cond_0
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Unexpected ASCII type decoded"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    if-ne v0, v1, :cond_7

    .line 11
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object p1

    .line 12
    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    .line 13
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 14
    :cond_4
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->g:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 15
    iget-object v5, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->a:[B

    array-length v6, v5

    invoke-static {p1, v2, v5, v2, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 16
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->a:[B

    array-length v7, v6

    array-length v8, p1

    array-length v6, v6

    sub-int/2addr v8, v6

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->b:Ljava/lang/String;

    invoke-direct {v5, p1, v7, v8, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 17
    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 18
    iget-object v4, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$a;->a:[B

    array-length v4, v4

    array-length v7, v6

    invoke-static {p1, v4, v6, v2, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_5

    return-object v5

    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 20
    :cond_6
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 21
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entry.type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entry.directoryType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDirectoryType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDescriptionWithoutValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 25
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "GPS text field not encoded as bytes."

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
