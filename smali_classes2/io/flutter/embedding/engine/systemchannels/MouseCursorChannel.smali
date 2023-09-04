.class public Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;
.super Ljava/lang/Object;
.source "MouseCursorChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;
    }
.end annotation


# instance fields
.field private a:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final channel:Lio/flutter/plugin/common/MethodChannel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/dart/DartExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$a;-><init>(Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->b:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 3
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    sget-object v2, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    const-string v3, "flutter/mousecursor"

    invoke-direct {v1, p1, v3, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 4
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;)Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->a:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;

    return-object p0
.end method


# virtual methods
.method public setMethodHandler(Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->a:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;

    return-void
.end method

.method public synthesizeMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->b:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-interface {v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method
