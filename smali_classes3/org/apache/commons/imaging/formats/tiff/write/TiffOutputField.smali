.class public Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
.super Ljava/lang/Object;
.source "TiffOutputField.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[B

.field private final c:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

.field public final count:I

.field private d:I

.field public final fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

.field public final tag:I

.field public final tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->d:I

    .line 4
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    .line 5
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    .line 6
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    .line 7
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->count:I

    .line 8
    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->b:[B

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->c:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Field Separate value ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->c:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V
    .locals 6

    .line 1
    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    return-void
.end method

.method protected static createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v2, 0x0

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    return-object v0
.end method


# virtual methods
.method public bytesEqual([B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->b:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method protected getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->c:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    return-object v0
.end method

.method public getSortHint()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->d:I

    return v0
.end method

.method protected final isLocalValue()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->b:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setData([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->b:[B

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->b:[B

    .line 3
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->c:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->updateValue([B)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v0, "Cannot change size of value."

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSortHint(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "count: "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected writeField(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 3
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->count:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->c:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->b:[B

    array-length v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 8
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->b:[B

    array-length v0, v0

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 9
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local value has invalid length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v0, "Unexpected separate value item."

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->c:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    :cond_3
    return-void

    .line 14
    :cond_4
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v0, "Missing separate value item."

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
