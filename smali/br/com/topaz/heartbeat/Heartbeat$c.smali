.class Lbr/com/topaz/heartbeat/Heartbeat$c;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/heartbeat/Heartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lbr/com/topaz/heartbeat/StartCallback;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Landroid/content/Context;Ljava/lang/String;Lbr/com/topaz/heartbeat/StartCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/heartbeat/Heartbeat$c;->b:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/Heartbeat$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/Heartbeat$c;->d:Lbr/com/topaz/heartbeat/StartCallback;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lbr/com/topaz/heartbeat/StartCallback;)Lbr/com/topaz/heartbeat/Heartbeat$c;
    .locals 2

    new-instance v0, Lbr/com/topaz/heartbeat/Heartbeat$c;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lbr/com/topaz/heartbeat/Heartbeat$c;-><init>(Lbr/com/topaz/s/a;Landroid/content/Context;Ljava/lang/String;Lbr/com/topaz/heartbeat/StartCallback;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/Heartbeat$c;->b:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/topaz/u0/o;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/Heartbeat$c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/Heartbeat$c;->c:Ljava/lang/String;

    iget-object v2, p0, Lbr/com/topaz/heartbeat/Heartbeat$c;->d:Lbr/com/topaz/heartbeat/StartCallback;

    invoke-static {v0, v1, v2}, Lbr/com/topaz/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lbr/com/topaz/heartbeat/StartCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "OFDHB:051"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/Heartbeat$c;->d:Lbr/com/topaz/heartbeat/StartCallback;

    if-eqz v0, :cond_1

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1}, Lbr/com/topaz/heartbeat/StartCallback;->innerOnFailure(I)V

    :cond_1
    :goto_0
    return-void
.end method
