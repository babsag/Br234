.class Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter$a;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbr/com/topaz/l/l;)V
    .locals 9

    new-instance v8, Lbr/com/topaz/heartbeat/qrcode/a;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter$a;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    move-result-object v2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter$a;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->b(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    move-result-object v3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter$a;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->c(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    move-result-object v4

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter$a;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->d(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/f0/c;

    move-result-object v5

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter$a;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->e(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;

    move-result-object v7

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lbr/com/topaz/heartbeat/qrcode/a;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/heartbeat/qrcode/QRCodeData;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;)V

    invoke-virtual {v8}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
