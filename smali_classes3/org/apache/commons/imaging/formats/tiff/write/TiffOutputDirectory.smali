.class public final Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
.super Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;
.source "TiffOutputDirectory.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/nio/ByteOrder;

.field private d:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

.field private e:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

.field private f:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/write/c;->a:Lorg/apache/commons/imaging/formats/tiff/write/c;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteOrder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    .line 3
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    .line 4
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSortHint()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSortHint()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic b(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    return p0
.end method

.method private c(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->encodeValue(Ljava/nio/ByteOrder;[Ljava/lang/String;)[B

    move-result-object v6

    .line 12
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, v6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    array-length v5, v6

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 15
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 158
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v5

    .line 159
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, v5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    array-length v4, v5

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 162
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 163
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v5

    .line 164
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, v5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    array-length v4, v5

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 167
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 168
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    :goto_0
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v4, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v6

    .line 171
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    array-length v5, v6

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 172
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->encodeValue(Ljava/nio/ByteOrder;B)[B

    move-result-object v6

    .line 3
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v5, v6

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 5
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 106
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->encodeValue(Ljava/nio/ByteOrder;[B)[B

    move-result-object v6

    .line 109
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 110
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 111
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 114
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 115
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 6
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;->encodeValue(Ljava/nio/ByteOrder;[B)[B

    move-result-object v6

    .line 9
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 96
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->encodeValue(Ljava/nio/ByteOrder;D)[B

    move-result-object v6

    .line 98
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 99
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 100
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tag expects "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 101
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;->encodeValue(Ljava/nio/ByteOrder;[D)[B

    move-result-object v6

    .line 104
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 105
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 86
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->encodeValue(Ljava/nio/ByteOrder;F)[B

    move-result-object v6

    .line 88
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 89
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 90
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloats;[F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 91
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloats;->encodeValue(Ljava/nio/ByteOrder;[F)[B

    move-result-object v6

    .line 94
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 95
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 151
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v7

    .line 152
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->dataTypes:Ljava/util/List;

    const/4 v1, 0x0

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    array-length v6, v7

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 154
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 26
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->encodeValue(Ljava/nio/ByteOrder;I)[B

    move-result-object v6

    .line 28
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 29
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 30
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongs;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 31
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongs;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v6

    .line 34
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 35
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 36
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->encodeValue(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 38
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 39
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 40
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 41
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 44
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 45
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 46
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->encodeValue(Ljava/nio/ByteOrder;B)[B

    move-result-object v6

    .line 48
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 49
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 50
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSBytes;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 51
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSBytes;->encodeValue(Ljava/nio/ByteOrder;[B)[B

    move-result-object v6

    .line 54
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 55
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 66
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->encodeValue(Ljava/nio/ByteOrder;I)[B

    move-result-object v6

    .line 68
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 69
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 70
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLongs;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 71
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLongs;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v6

    .line 74
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 75
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 76
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->encodeValue(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 78
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 79
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 80
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRationals;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 81
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRationals;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 84
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 85
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 56
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->encodeValue(Ljava/nio/ByteOrder;S)[B

    move-result-object v6

    .line 58
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 60
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShorts;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 61
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShorts;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 64
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 65
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 16
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->encodeValue(Ljava/nio/ByteOrder;S)[B

    move-result-object v6

    .line 18
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 19
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void

    .line 20
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 121
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v6

    .line 124
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 116
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 119
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 120
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 131
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v6

    .line 134
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 135
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 136
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 139
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 140
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 126
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 129
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 130
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 146
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v6

    .line 149
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 150
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 141
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 144
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 145
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;[S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 21
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    if-lez v0, :cond_1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value(s), not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v6

    .line 24
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v5, p2

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 25
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 155
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v5

    .line 156
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    array-length v4, v5

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 157
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->description(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 3
    iget v2, v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 0

    .line 1
    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object p1

    return-object p1
.end method

.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getItemDescription()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->getExifDirectoryType(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/f;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/tiff/write/f;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 2
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 3
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->e:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x1

    invoke-direct {v2, v0, v4, v6, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 5
    invoke-virtual {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 6
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->e:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p1, Lorg/apache/commons/imaging/formats/tiff/write/f;->a:Ljava/nio/ByteOrder;

    .line 8
    invoke-virtual {v4, v0, v5}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v0

    .line 9
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-direct {v5, v1, v4, v6, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 10
    invoke-virtual {p0, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 11
    :goto_0
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 12
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 13
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongs;

    invoke-direct {p0, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 14
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-direct {p0, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->c(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 15
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->f:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    if-eqz v6, :cond_3

    .line 16
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->stripsNotTiles()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v4

    move-object v1, v5

    .line 17
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->f:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v3

    .line 18
    array-length v4, v3

    new-array v5, v4, [I

    .line 19
    array-length v6, v3

    new-array v7, v6, [I

    const/4 v8, 0x0

    .line 20
    :goto_2
    array-length v9, v3

    if-ge v8, v9, :cond_2

    .line 21
    aget-object v9, v3, v8

    iget v9, v9, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 22
    :cond_2
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v10, p1, Lorg/apache/commons/imaging/formats/tiff/write/f;->a:Ljava/nio/ByteOrder;

    .line 23
    invoke-virtual {v9, v5, v10}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v10

    invoke-direct {v8, v0, v9, v4, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 24
    invoke-virtual {p0, v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 25
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/write/f;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v7, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v0

    .line 26
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-direct {v4, v1, v9, v6, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 27
    invoke-virtual {p0, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 28
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/e;

    invoke-direct {v0, v3, v5, v8}, Lorg/apache/commons/imaging/formats/tiff/write/e;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;[ILorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    move-object v3, v0

    .line 29
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->sortFields()V

    .line 32
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 33
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 34
    :cond_4
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v4

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    .line 36
    iget-object v1, v3, Lorg/apache/commons/imaging/formats/tiff/write/e;->c:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/f;->b(Lorg/apache/commons/imaging/formats/tiff/write/e;)V

    .line 38
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->e:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    if-eqz v1, :cond_7

    .line 39
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    .line 40
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v1

    const-string v4, "JPEG image data"

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    .line 41
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p1, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/write/f;->a(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_7
    return-object v0
.end method

.method public getRawJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->e:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    return-object v0
.end method

.method public getRawTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->f:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    return-object v0
.end method

.method public removeField(I)V
    .locals 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 4
    iget v3, v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    if-ne v3, p1, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V
    .locals 0

    .line 1
    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(I)V

    return-void
.end method

.method public setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->e:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    return-void
.end method

.method public setNextDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->d:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    return-void
.end method

.method public setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->f:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    return-void
.end method

.method public sortFields()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/write/b;->a:Lorg/apache/commons/imaging/formats/tiff/write/b;

    .line 2
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public writeItem(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 3
    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->writeField(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->d:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v0

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_1

    :cond_2
    long-to-int v1, v0

    .line 7
    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    :goto_1
    return-void
.end method
