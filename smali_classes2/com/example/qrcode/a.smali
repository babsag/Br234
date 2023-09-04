.class public final synthetic Lcom/example/qrcode/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/example/qrcode/QRCaptureView;

.field public final synthetic b:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lcom/example/qrcode/QRCaptureView;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/qrcode/a;->a:Lcom/example/qrcode/QRCaptureView;

    iput-object p2, p0, Lcom/example/qrcode/a;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/example/qrcode/a;->a:Lcom/example/qrcode/QRCaptureView;

    iget-object v1, p0, Lcom/example/qrcode/a;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, v1}, Lcom/example/qrcode/QRCaptureView;->d(Lcom/example/qrcode/QRCaptureView;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method
