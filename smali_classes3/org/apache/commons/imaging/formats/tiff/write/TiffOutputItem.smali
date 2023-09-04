.class abstract Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;
.super Ljava/lang/Object;
.source "TiffOutputItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;
    }
.end annotation


# static fields
.field public static final UNDEFINED_VALUE:J = -0x1L


# instance fields
.field private a:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->a:J

    return-void
.end method


# virtual methods
.method public abstract getItemDescription()Ljava/lang/String;
.end method

.method public abstract getItemLength()I
.end method

.method protected getOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->a:J

    return-wide v0
.end method

.method protected setOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->a:J

    return-void
.end method

.method public abstract writeItem(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation
.end method
