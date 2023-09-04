.class public Lcom/manateeworks/BarcodeScannerPlugin$ImageInfo;
.super Ljava/lang/Object;
.source "BarcodeScannerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manateeworks/BarcodeScannerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field a:[B

.field b:I

.field c:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/manateeworks/BarcodeScannerPlugin$ImageInfo;->b:I

    .line 3
    iput p2, p0, Lcom/manateeworks/BarcodeScannerPlugin$ImageInfo;->c:I

    mul-int p1, p1, p2

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin$ImageInfo;->a:[B

    return-void
.end method
