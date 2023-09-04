.class Lio/flutter/plugin/mouse/MouseCursorPlugin$a;
.super Ljava/lang/Object;
.source "MouseCursorPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/mouse/MouseCursorPlugin;-><init>(Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/mouse/MouseCursorPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/mouse/MouseCursorPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/mouse/MouseCursorPlugin$a;->a:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateSystemCursor(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/mouse/MouseCursorPlugin$a;->a:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    invoke-static {v0}, Lio/flutter/plugin/mouse/MouseCursorPlugin;->b(Lio/flutter/plugin/mouse/MouseCursorPlugin;)Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/mouse/MouseCursorPlugin$a;->a:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    invoke-static {v1, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin;->a(Lio/flutter/plugin/mouse/MouseCursorPlugin;Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method
