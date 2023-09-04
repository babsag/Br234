.class public Lbr/com/topaz/l0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/r/b$a;


# static fields
.field private static b:Z = false


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/l0/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/l0/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lbr/com/topaz/l0/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    const-string v1, "6"

    const-string v2, "HB"

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "7"

    const-string v2, "4.6.0.1074349"

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    const/4 p1, 0x1

    sput-boolean p1, Lbr/com/topaz/l0/a;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Success request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lbr/com/topaz/l0/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lbr/com/topaz/l/o;->p()Lbr/com/topaz/l/g;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->v()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    new-instance v3, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v3, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    const-string v0, "016"

    invoke-virtual {v3, v2, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    sput-boolean v1, Lbr/com/topaz/l0/a;->b:Z

    new-instance v1, Lbr/com/topaz/n/b;

    invoke-direct {v1, p1}, Lbr/com/topaz/n/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lbr/com/topaz/l0/a$a;

    invoke-direct {v3, p0, p1}, Lbr/com/topaz/l0/a$a;-><init>(Lbr/com/topaz/l0/a;Landroid/content/Context;)V

    invoke-interface {v1, v3}, Lbr/com/topaz/n/a;->a(Lbr/com/topaz/n/a$a;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lbr/com/topaz/l0/a$b;

    invoke-direct {v2, p0, p1, v1}, Lbr/com/topaz/l0/a$b;-><init>(Lbr/com/topaz/l0/a;Landroid/content/Context;Lbr/com/topaz/n/a;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/l0/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Failure request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
