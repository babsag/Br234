.class Lbr/com/topaz/heartbeat/qrcode/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/qrcode/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/qrcode/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/qrcode/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/a$a;->a:Lbr/com/topaz/heartbeat/qrcode/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 1

    iget-object p2, p0, Lbr/com/topaz/heartbeat/qrcode/a$a;->a:Lbr/com/topaz/heartbeat/qrcode/a;

    invoke-static {p2}, Lbr/com/topaz/heartbeat/qrcode/a;->a(Lbr/com/topaz/heartbeat/qrcode/a;)Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0, p1}, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;->onFinish(II)V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/a$a;->a:Lbr/com/topaz/heartbeat/qrcode/a;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/qrcode/a;->a(Lbr/com/topaz/heartbeat/qrcode/a;)Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;->onFinish(II)V

    return-void
.end method
