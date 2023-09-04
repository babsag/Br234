.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$b;
.super Ljava/lang/Object;
.source "BrbCaMasPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$e",
            "val$details"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$b;->c:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;

    iput-object p2, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$b;->a:Ljava/lang/Throwable;

    iput-object p3, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$b;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$b;->c:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;

    iget-object v0, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$b;->a:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$b;->b:Ljava/util/Map;

    const-string v3, "login"

    invoke-interface {v0, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
