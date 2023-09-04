.class Lorg/apache/commons/imaging/formats/tiff/TiffReader$b;
.super Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;
.source "TiffReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final e:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$b;->e:Z

    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public readImageData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$b;->e:Z

    return v0
.end method
