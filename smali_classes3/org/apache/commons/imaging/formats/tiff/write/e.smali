.class Lorg/apache/commons/imaging/formats/tiff/write/e;
.super Ljava/lang/Object;
.source "ImageDataOffsets.java"


# instance fields
.field final a:[I

.field final b:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

.field final c:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;


# direct methods
.method constructor <init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;[ILorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/e;->a:[I

    .line 3
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/write/e;->b:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 4
    array-length p2, p1

    new-array p2, p2, [Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/e;->c:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    const/4 p2, 0x0

    .line 5
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    .line 6
    new-instance p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    aget-object v0, p1, p2

    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v0

    const-string v1, "TIFF image data"

    invoke-direct {p3, v1, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    .line 8
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/e;->c:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    aput-object p3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
