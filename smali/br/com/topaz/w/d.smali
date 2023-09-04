.class public Lbr/com/topaz/w/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/w/d$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/w/e;

.field private c:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private d:Landroid/location/LocationManager;

.field private e:Landroid/location/LocationListener;

.field private f:Lbr/com/topaz/w/f;

.field private g:Lbr/com/topaz/w/d$c;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/HandlerThread;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/w/e;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbr/com/topaz/w/f;

    invoke-direct {v0}, Lbr/com/topaz/w/f;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/w/d;->f:Lbr/com/topaz/w/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/w/d;->k:Z

    iput-object p1, p0, Lbr/com/topaz/w/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/w/d;->b:Lbr/com/topaz/w/e;

    iput-object p3, p0, Lbr/com/topaz/w/d;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lbr/com/topaz/w/d;->d:Landroid/location/LocationManager;

    const-string p2, "gps"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lbr/com/topaz/w/d;->k:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lbr/com/topaz/w/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/w/d;)Lbr/com/topaz/w/f;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/w/d;->f:Lbr/com/topaz/w/f;

    return-object p0
.end method

.method private a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lbr/com/topaz/w/d;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic b(Lbr/com/topaz/w/d;)Lbr/com/topaz/w/e;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/w/d;->b:Lbr/com/topaz/w/e;

    return-object p0
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tt"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbr/com/topaz/w/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbr/com/topaz/w/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/w/d$b;

    invoke-direct {v1, p0}, Lbr/com/topaz/w/d$b;-><init>(Lbr/com/topaz/w/d;)V

    iget-object v2, p0, Lbr/com/topaz/w/d;->b:Lbr/com/topaz/w/e;

    invoke-virtual {v2}, Lbr/com/topaz/w/e;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lbr/com/topaz/w/d;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/w/d;->j:Landroid/os/HandlerThread;

    return-object p0
.end method


# virtual methods
.method public a(Lbr/com/topaz/w/d$c;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/w/d;->g:Lbr/com/topaz/w/d$c;

    return-void
.end method

.method public c()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/w/d;->b:Lbr/com/topaz/w/e;

    invoke-virtual {v0}, Lbr/com/topaz/w/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/w/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbr/com/topaz/w/d;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gt"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbr/com/topaz/w/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lbr/com/topaz/w/d$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/w/d$a;-><init>(Lbr/com/topaz/w/d;)V

    iput-object v0, p0, Lbr/com/topaz/w/d;->e:Landroid/location/LocationListener;

    invoke-direct {p0}, Lbr/com/topaz/w/d;->b()V

    iget-object v0, p0, Lbr/com/topaz/w/d;->f:Lbr/com/topaz/w/f;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/f;->a(J)V

    iget-object v3, p0, Lbr/com/topaz/w/d;->d:Landroid/location/LocationManager;

    const-string v4, "gps"

    iget-object v0, p0, Lbr/com/topaz/w/d;->b:Lbr/com/topaz/w/e;

    invoke-virtual {v0}, Lbr/com/topaz/w/e;->b()I

    move-result v0

    int-to-long v5, v0

    const/4 v7, 0x0

    iget-object v8, p0, Lbr/com/topaz/w/d;->e:Landroid/location/LocationListener;

    iget-object v0, p0, Lbr/com/topaz/w/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/w/d;->g:Lbr/com/topaz/w/d$c;

    invoke-interface {v0}, Lbr/com/topaz/w/d$c;->b()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/w/d;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "094"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/w/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/w/d;->d:Landroid/location/LocationManager;

    iget-object v1, p0, Lbr/com/topaz/w/d;->e:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lbr/com/topaz/w/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lbr/com/topaz/w/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lbr/com/topaz/w/d;->g:Lbr/com/topaz/w/d$c;

    iget-object v1, p0, Lbr/com/topaz/w/d;->f:Lbr/com/topaz/w/f;

    invoke-interface {v0, v1}, Lbr/com/topaz/w/d$c;->a(Lbr/com/topaz/w/f;)V

    :cond_0
    return-void
.end method
