.class public final Lcom/example/qrcode/QRCaptureView$1;
.super Ljava/lang/Object;
.source "QRCaptureView.kt"

# interfaces
.implements Lcom/journeyapps/barcodescanner/BarcodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/qrcode/QRCaptureView;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0016\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/example/qrcode/QRCaptureView$1",
        "Lcom/journeyapps/barcodescanner/BarcodeCallback;",
        "barcodeResult",
        "",
        "result",
        "Lcom/journeyapps/barcodescanner/BarcodeResult;",
        "possibleResultPoints",
        "resultPoints",
        "",
        "Lcom/google/zxing/ResultPoint;",
        "qrcode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/example/qrcode/QRCaptureView;


# direct methods
.method constructor <init>(Lcom/example/qrcode/QRCaptureView;)V
    .locals 0

    iput-object p1, p0, Lcom/example/qrcode/QRCaptureView$1;->a:Lcom/example/qrcode/QRCaptureView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public barcodeResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 2
    .param p1    # Lcom/journeyapps/barcodescanner/BarcodeResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/example/qrcode/QRCaptureView$1;->a:Lcom/example/qrcode/QRCaptureView;

    invoke-virtual {v0}, Lcom/example/qrcode/QRCaptureView;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCaptured"

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public possibleResultPoints(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resultPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
