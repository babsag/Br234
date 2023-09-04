.class Lbr/com/topaz/e0/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/e0/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/e0/b;


# direct methods
.method constructor <init>(Lbr/com/topaz/e0/b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/e0/b$c;->a:Lbr/com/topaz/e0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/e0/b$c;->a:Lbr/com/topaz/e0/b;

    invoke-static {v1}, Lbr/com/topaz/e0/b;->a(Lbr/com/topaz/e0/b;)Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/e0/b$c;->a:Lbr/com/topaz/e0/b;

    invoke-static {v1}, Lbr/com/topaz/e0/b;->b(Lbr/com/topaz/e0/b;)Lbr/com/topaz/l/e0;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lbr/com/topaz/l/e0;->g(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lbr/com/topaz/e0/b$c;->a:Lbr/com/topaz/e0/b;

    invoke-static {v2}, Lbr/com/topaz/e0/b;->c(Lbr/com/topaz/e0/b;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object v2

    const-string v3, "095"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v0}, Lbr/com/topaz/e0/b;->c(Z)Z

    return-void

    :goto_1
    invoke-static {v0}, Lbr/com/topaz/e0/b;->c(Z)Z

    throw v1
.end method
