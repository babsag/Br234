.class public abstract Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
.super Lorg/apache/commons/imaging/formats/tiff/TiffElement;
.source "TiffElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataElement"
.end annotation


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>(JI[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffElement;-><init>(JI)V

    .line 2
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->a:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->a:[B

    array-length v0, v0

    return v0
.end method
