.class Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$c;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->hasIptcSegment(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$c;->b:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$c;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 0

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 0

    const/4 p2, 0x0

    const p3, 0xffd9

    if-ne p1, p3, :cond_0

    return p2

    :cond_0
    const p3, 0xffed

    const/4 p4, 0x1

    if-ne p1, p3, :cond_1

    .line 1
    new-instance p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual {p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->isPhotoshopJpegSegment([B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$c;->a:[Z

    aput-boolean p4, p1, p2

    return p2

    :cond_1
    return p4
.end method