.class public Lbr/com/topaz/m0/a;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lbr/com/topaz/l/f0;

.field private final d:Lbr/com/topaz/l/e0;

.field private final e:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0, p2}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p1, p0, Lbr/com/topaz/m0/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/m0/a;->c:Lbr/com/topaz/l/f0;

    iput-object p4, p0, Lbr/com/topaz/m0/a;->d:Lbr/com/topaz/l/e0;

    iput-object p5, p0, Lbr/com/topaz/m0/a;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lbr/com/topaz/m0/a;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->e()Lbr/com/topaz/l/d;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/d;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/l/d;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/l/d;->d()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lbr/com/topaz/m0/a;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/l/d;->d()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lbr/com/topaz/m0/a;->d:Lbr/com/topaz/l/e0;

    invoke-interface {v4}, Lbr/com/topaz/l/e0;->o()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/m0/a;->d:Lbr/com/topaz/l/e0;

    invoke-interface {v0, v2, v3}, Lbr/com/topaz/l/e0;->i(J)V

    iget-object v0, p0, Lbr/com/topaz/m0/a;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lbr/com/topaz/m0/a$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/m0/a$a;-><init>(Lbr/com/topaz/m0/a;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lbr/com/topaz/m0/a;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "096"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
