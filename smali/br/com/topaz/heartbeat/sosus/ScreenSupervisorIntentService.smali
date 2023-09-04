.class public Lbr/com/topaz/heartbeat/sosus/ScreenSupervisorIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/k0/a;

.field private b:Lbr/com/topaz/heartbeat/sosus/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "hb_sosus"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    return-void
.end method

.method private a(Lbr/com/topaz/o0/g;)V
    .locals 1

    invoke-virtual {p1}, Lbr/com/topaz/o0/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/sosus/ScreenSupervisorIntentService;->b(Lbr/com/topaz/o0/g;)V

    return-void
.end method

.method private b(Lbr/com/topaz/o0/g;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lbr/com/topaz/heartbeat/sosus/ScreenSupervisorIntentService;->b:Lbr/com/topaz/heartbeat/sosus/a;

    invoke-virtual {v1, p1}, Lbr/com/topaz/heartbeat/sosus/a;->a(Lbr/com/topaz/o0/g;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    add-int/2addr v2, v0

    invoke-virtual {p1}, Lbr/com/topaz/o0/g;->g()I

    move-result v5

    if-le v2, v5, :cond_1

    return-void

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eq v1, v4, :cond_3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lbr/com/topaz/o0/g;->f()I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lbr/com/topaz/o0/g;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/sosus/ScreenSupervisorIntentService;->b:Lbr/com/topaz/heartbeat/sosus/a;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/sosus/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "OFDHB:191"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/sosus/ScreenSupervisorIntentService;->a:Lbr/com/topaz/k0/a;

    if-nez v0, :cond_1

    invoke-static {p0}, Lbr/com/topaz/k0/b;->a(Landroid/content/Context;)Lbr/com/topaz/k0/a;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/sosus/ScreenSupervisorIntentService;->a:Lbr/com/topaz/k0/a;

    new-instance v0, Lbr/com/topaz/heartbeat/sosus/a;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/sosus/ScreenSupervisorIntentService;->a:Lbr/com/topaz/k0/a;

    invoke-direct {v0, p0, v1}, Lbr/com/topaz/heartbeat/sosus/a;-><init>(Landroid/content/Context;Lbr/com/topaz/k0/a;)V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/sosus/ScreenSupervisorIntentService;->b:Lbr/com/topaz/heartbeat/sosus/a;

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "hb_sosus_config"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lbr/com/topaz/o0/g;

    if-eqz v0, :cond_2

    check-cast p1, Lbr/com/topaz/o0/g;

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/sosus/ScreenSupervisorIntentService;->a(Lbr/com/topaz/o0/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "OFDHB:098"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
