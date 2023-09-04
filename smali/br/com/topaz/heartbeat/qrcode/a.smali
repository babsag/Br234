.class public Lbr/com/topaz/heartbeat/qrcode/a;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

.field private c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private d:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

.field private e:Lbr/com/topaz/f0/c;

.field private f:Lbr/com/topaz/l/l;

.field private g:Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/heartbeat/qrcode/QRCodeData;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/qrcode/a;->b:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/qrcode/a;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/qrcode/a;->d:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/qrcode/a;->e:Lbr/com/topaz/f0/c;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/qrcode/a;->f:Lbr/com/topaz/l/l;

    iput-object p7, p0, Lbr/com/topaz/heartbeat/qrcode/a;->g:Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/qrcode/a;)Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/qrcode/a;->g:Lbr/com/topaz/heartbeat/qrcode/QRCodeAuthentication$QRCodeCallback;

    return-object p0
.end method

.method private a(Lbr/com/topaz/l/l;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/a;->b:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/a;->d:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/a;->b:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/qrcode/QRCodeData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/a;->f:Lbr/com/topaz/l/l;

    const-string v1, "6"

    const-string v2, "QRC"

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/a;->f:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/qrcode/a;->b:Lbr/com/topaz/heartbeat/qrcode/QRCodeData;

    const-string v2, "7"

    invoke-virtual {v0, v2, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/qrcode/a;->f:Lbr/com/topaz/l/l;

    invoke-direct {p0, v0}, Lbr/com/topaz/heartbeat/qrcode/a;->a(Lbr/com/topaz/l/l;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/qrcode/a;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/qrcode/a;->d:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/qrcode/a;->d:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-k-id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "x-ci-id"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/qrcode/a;->e:Lbr/com/topaz/f0/c;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/qrcode/a;->d:Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;

    invoke-virtual {v3}, Lbr/com/topaz/heartbeat/qrcode/QRCodeStructure;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbr/com/topaz/heartbeat/qrcode/a$a;

    invoke-direct {v4, p0}, Lbr/com/topaz/heartbeat/qrcode/a$a;-><init>(Lbr/com/topaz/heartbeat/qrcode/a;)V

    invoke-virtual {v2, v3, v1, v0, v4}, Lbr/com/topaz/f0/c;->b(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lbr/com/topaz/f0/c$a;)V

    :cond_0
    return-void
.end method
