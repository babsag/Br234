.class Lio/flutter/embedding/engine/renderer/FlutterRenderer$b$a;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b$a;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b$a;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;

    invoke-static {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;->a(Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b$a;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;

    iget-object p1, p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-static {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->b(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b$a;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;

    iget-object v0, p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-static {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;->b(Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->c(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    :cond_1
    :goto_0
    return-void
.end method
