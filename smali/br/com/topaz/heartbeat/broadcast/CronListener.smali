.class public Lbr/com/topaz/heartbeat/broadcast/CronListener;
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
    .locals 0

    new-instance p2, Lbr/com/topaz/j/a;

    invoke-direct {p2}, Lbr/com/topaz/j/a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbr/com/topaz/j/a;->a(Landroid/content/Context;)V

    return-void
.end method
