.class public Lbr/com/topaz/heartbeat/Heartbeat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/Heartbeat$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCipheredId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lbr/com/topaz/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentLocation(Landroid/content/Context;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/CurrentLocationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbr/com/topaz/heartbeat/CurrentLocationCallback;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lbr/com/topaz/heartbeat/Heartbeat$b;

    invoke-direct {v0, p2}, Lbr/com/topaz/heartbeat/Heartbeat$b;-><init>(Lbr/com/topaz/heartbeat/CurrentLocationCallback;)V

    invoke-static {p0, p1, v0}, Lbr/com/topaz/a/c;->a(Landroid/content/Context;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/CurrentLocationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "207"

    invoke-static {p0}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lbr/com/topaz/a/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecurityId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lbr/com/topaz/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSyncID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lbr/com/topaz/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNotificationServiceEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lbr/com/topaz/a/c;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lbr/com/topaz/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbr/com/topaz/heartbeat/Heartbeat;->start(Landroid/content/Context;Ljava/lang/String;Lbr/com/topaz/heartbeat/StartCallback;)V

    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;Ljava/lang/String;Lbr/com/topaz/heartbeat/StartCallback;)V
    .locals 2

    const-class v0, Lbr/com/topaz/heartbeat/Heartbeat;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lbr/com/topaz/heartbeat/Heartbeat$a;

    invoke-direct {v1, p2}, Lbr/com/topaz/heartbeat/Heartbeat$a;-><init>(Lbr/com/topaz/heartbeat/StartCallback;)V

    invoke-static {}, Lbr/com/topaz/s/b;->a()V

    invoke-static {p0, p1, v1}, Lbr/com/topaz/heartbeat/Heartbeat$c;->a(Landroid/content/Context;Ljava/lang/String;Lbr/com/topaz/heartbeat/StartCallback;)Lbr/com/topaz/heartbeat/Heartbeat$c;

    move-result-object p0

    invoke-virtual {p0}, Lbr/com/topaz/s0/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "OFDHB:043"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p0, 0x7d6

    invoke-virtual {p2, p0}, Lbr/com/topaz/heartbeat/StartCallback;->innerOnFailure(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
