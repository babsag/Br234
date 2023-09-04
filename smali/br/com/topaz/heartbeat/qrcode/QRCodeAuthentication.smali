.class public Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;
    }
.end annotation


# static fields
.field private static final START_FAILURE:I = -0x2e

.field private static final START_QRCODE_ACTION:I


# instance fields
.field private midCrypt:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private qrCodeData:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

.field private qrCodePresenter:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

.field private qrCodeStructure:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v3, Lbr/com/topaz/f0/c;

    invoke-direct {v3}, Lbr/com/topaz/f0/c;-><init>()V

    new-instance v4, Lbr/com/topaz/l/l;

    invoke-direct {v4}, Lbr/com/topaz/l/l;-><init>()V

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v7

    new-instance v0, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->midCrypt:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v7}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->G()Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    move-result-object v2

    iput-object v2, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->qrCodeStructure:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    new-instance v8, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->midCrypt:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    move-object v0, v8

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/l;Landroid/content/Context;Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;)V

    iput-object v8, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->qrCodePresenter:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {p1, v7}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->ofdException:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "078"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 v0, -0x2e

    invoke-interface {p2, p1, v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;->onFinish(II)V

    :goto_1
    return-void
.end method

.method private decriptData(Ljava/lang/String;)Lbr/com/topaz/heartbeat/qrcode/QRCodeData;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->midCrypt:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->qrCodeStructure:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;-><init>()V

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->a(Ljava/lang/String;)Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->qrCodePresenter:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->qrCodePresenter:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public send()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->qrCodePresenter:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->b()V

    return-void
.end method

.method public setQrCodeData(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->decriptData(Ljava/lang/String;)Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->qrCodeData:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication;->qrCodePresenter:Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a(Lbr/com/topaz/heartbeat/qrcode/QRCodeData;)V

    return-void
.end method
