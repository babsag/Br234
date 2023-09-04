.class public Lbr/com/topaz/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;

.field private c:Lbr/com/topaz/heartbeat/signalinfo/b;

.field private d:Lbr/com/topaz/u0/d;

.field private e:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lbr/com/topaz/u0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/f/a;->b:Landroid/content/Intent;

    iput-object p3, p0, Lbr/com/topaz/f/a;->d:Lbr/com/topaz/u0/d;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/f/a;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/f/a;->b:Landroid/content/Intent;

    return-object p0
.end method

.method private a(Landroid/net/wifi/WifiInfo;)V
    .locals 10

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "<unknown ssid>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\"\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v3

    new-instance v6, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v6}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/f/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v7

    new-instance v8, Lbr/com/topaz/u0/h;

    invoke-direct {v8}, Lbr/com/topaz/u0/h;-><init>()V

    new-instance v1, Lbr/com/topaz/heartbeat/signalinfo/a;

    iget-object v2, p0, Lbr/com/topaz/f/a;->d:Lbr/com/topaz/u0/d;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lbr/com/topaz/u0/d;->a(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lbr/com/topaz/heartbeat/signalinfo/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbr/com/topaz/f/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object p1

    new-instance v9, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v9, p1}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object v9, p0, Lbr/com/topaz/f/a;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    new-instance v0, Lbr/com/topaz/l/g0;

    iget-object v5, p0, Lbr/com/topaz/f/a;->a:Landroid/content/Context;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v8, Lbr/com/topaz/heartbeat/signalinfo/b;

    new-instance v7, Lbr/com/topaz/u0/p;

    iget-object v2, p0, Lbr/com/topaz/f/a;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v7, v2}, Lbr/com/topaz/u0/p;-><init>(Lbr/com/topaz/heartbeat/utils/OFDException;)V

    move-object v2, v8

    move-object v4, p1

    move-object v5, v0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lbr/com/topaz/heartbeat/signalinfo/b;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/signalinfo/a;Lbr/com/topaz/u0/p;)V

    iput-object v8, p0, Lbr/com/topaz/f/a;->c:Lbr/com/topaz/heartbeat/signalinfo/b;

    invoke-virtual {v8}, Lbr/com/topaz/heartbeat/signalinfo/b;->run()V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/f/a;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/f/a;->a(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method

.method static synthetic b(Lbr/com/topaz/f/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/f/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lbr/com/topaz/f/a;)Lbr/com/topaz/heartbeat/utils/OFDException;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/f/a;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lbr/com/topaz/f/a$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/f/a$a;-><init>(Lbr/com/topaz/f/a;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
