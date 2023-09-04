.class public Lio/flutter/plugin/mouse/MouseCursorPlugin;
.super Ljava/lang/Object;
.source "MouseCursorPlugin.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;)V
    .locals 0
    .param p1    # Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugin/mouse/MouseCursorPlugin;->b:Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;

    .line 3
    iput-object p2, p0, Lio/flutter/plugin/mouse/MouseCursorPlugin;->c:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    .line 4
    new-instance p1, Lio/flutter/plugin/mouse/MouseCursorPlugin$a;

    invoke-direct {p1, p0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$a;-><init>(Lio/flutter/plugin/mouse/MouseCursorPlugin;)V

    invoke-virtual {p2, p1}, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->setMethodHandler(Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/mouse/MouseCursorPlugin;Ljava/lang/String;)Landroid/view/PointerIcon;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin;->c(Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lio/flutter/plugin/mouse/MouseCursorPlugin;)Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugin/mouse/MouseCursorPlugin;->b:Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Landroid/view/PointerIcon;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/flutter/plugin/mouse/MouseCursorPlugin;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/flutter/plugin/mouse/MouseCursorPlugin$b;

    invoke-direct {v0, p0}, Lio/flutter/plugin/mouse/MouseCursorPlugin$b;-><init>(Lio/flutter/plugin/mouse/MouseCursorPlugin;)V

    sput-object v0, Lio/flutter/plugin/mouse/MouseCursorPlugin;->a:Ljava/util/HashMap;

    .line 3
    :cond_0
    sget-object v0, Lio/flutter/plugin/mouse/MouseCursorPlugin;->a:Ljava/util/HashMap;

    const/16 v1, 0x3e8

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    iget-object v0, p0, Lio/flutter/plugin/mouse/MouseCursorPlugin;->b:Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;

    invoke-interface {v0, p1}, Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;->getSystemPointerIcon(I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/mouse/MouseCursorPlugin;->c:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->setMethodHandler(Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;)V

    return-void
.end method
