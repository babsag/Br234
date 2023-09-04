.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b$b;
.super Ljava/lang/Object;
.source "BrbCaMasPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b;->b(Lcom/ca/mas/foundation/MASResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$out"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b$b;->b:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b;

    iput-object p2, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b$b;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b$b;->b:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b;

    iget-object v0, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$b$b;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
