.class public Lbr/com/topaz/heartbeat/broadcast/NetworkStateChangedActionListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    new-instance v0, Lbr/com/topaz/u0/d;

    invoke-direct {v0}, Lbr/com/topaz/u0/d;-><init>()V

    new-instance v1, Lbr/com/topaz/f/a;

    invoke-direct {v1, p1, p2, v0}, Lbr/com/topaz/f/a;-><init>(Landroid/content/Context;Landroid/content/Intent;Lbr/com/topaz/u0/d;)V

    invoke-virtual {v1}, Lbr/com/topaz/f/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:039"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
