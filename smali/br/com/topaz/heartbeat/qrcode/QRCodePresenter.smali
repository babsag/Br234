.class public Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

.field private b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private c:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

.field private d:Landroid/content/Context;

.field private e:Lbr/com/topaz/f0/c;

.field private f:Lbr/com/topaz/l/l;

.field private g:Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/l;Landroid/content/Context;Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->c:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->d:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->e:Lbr/com/topaz/f0/c;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->f:Lbr/com/topaz/l/l;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->g:Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;

    new-instance p1, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    invoke-direct {p1}, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/heartbeat/qrcode/QRCodeData;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    return-object p0
.end method

.method static synthetic b(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/heartbeat/crypto/MidCrypt;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->b:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    return-object p0
.end method

.method static synthetic c(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->c:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    return-object p0
.end method

.method static synthetic d(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/f0/c;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->e:Lbr/com/topaz/f0/c;

    return-object p0
.end method

.method static synthetic e(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->g:Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->c:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public a(Lbr/com/topaz/heartbeat/qrcode/QRCodeData;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->f:Lbr/com/topaz/l/l;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->c:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->a:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->d:Landroid/content/Context;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;->f:Lbr/com/topaz/l/l;

    invoke-static {v0, v1}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter$a;-><init>(Lbr/com/topaz/heartbeat/qrcode/QRCodePresenter;)V

    invoke-virtual {v0, v1}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    :cond_0
    return-void
.end method
