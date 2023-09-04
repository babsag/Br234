.class Landroidx/camera/core/imagecapture/RgbaImageProxy$a;
.super Ljava/lang/Object;
.source "RgbaImageProxy.java"

# interfaces
.implements Landroidx/camera/core/ImageProxy$PlaneProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/imagecapture/RgbaImageProxy;->c(Ljava/nio/ByteBuffer;II)Landroidx/camera/core/ImageProxy$PlaneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(IILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$a;->a:I

    iput p2, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$a;->b:I

    iput-object p3, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$a;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$a;->c:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$a;->b:I

    return v0
.end method

.method public getRowStride()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$a;->a:I

    return v0
.end method
