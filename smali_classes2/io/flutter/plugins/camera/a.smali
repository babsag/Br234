.class public final synthetic Lio/flutter/plugins/camera/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/camera/a;->a:Lio/flutter/plugins/camera/Camera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/camera/a;->a:Lio/flutter/plugins/camera/Camera;

    invoke-virtual {v0}, Lio/flutter/plugins/camera/Camera;->t()V

    return-void
.end method
