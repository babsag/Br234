.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$a;
.super Ljava/lang/Object;
.source "BrbCaMasPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;->a(Lcom/ca/mas/foundation/MASUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;

    iget-object v0, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$d;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
