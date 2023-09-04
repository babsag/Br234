.class public Lbr/com/topaz/heartbeat/broadcast/OnBootScheduler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lbr/com/topaz/g0/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbr/com/topaz/g0/a;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/StartCallback;)V

    new-instance p1, Lbr/com/topaz/f/b;

    invoke-direct {p1, v0}, Lbr/com/topaz/f/b;-><init>(Lbr/com/topaz/g0/a;)V

    invoke-virtual {p1}, Lbr/com/topaz/f/b;->a()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/broadcast/OnBootScheduler;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
