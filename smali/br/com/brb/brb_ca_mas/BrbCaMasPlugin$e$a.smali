.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$e$a;
.super Ljava/lang/Object;
.source "BrbCaMasPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$e;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$e;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$e;)V
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
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$e$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$e$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$e;

    iget-object v0, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$e;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
