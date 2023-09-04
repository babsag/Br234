.class final Lio/flutter/view/FlutterNativeView$b;
.super Ljava/lang/Object;
.source "FlutterNativeView.java"

# interfaces
.implements Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/FlutterNativeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/FlutterNativeView;


# direct methods
.method private constructor <init>(Lio/flutter/view/FlutterNativeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/FlutterNativeView$b;->a:Lio/flutter/view/FlutterNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/view/FlutterNativeView;Lio/flutter/view/FlutterNativeView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/flutter/view/FlutterNativeView$b;-><init>(Lio/flutter/view/FlutterNativeView;)V

    return-void
.end method


# virtual methods
.method public onPreEngineRestart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView$b;->a:Lio/flutter/view/FlutterNativeView;

    invoke-static {v0}, Lio/flutter/view/FlutterNativeView;->a(Lio/flutter/view/FlutterNativeView;)Lio/flutter/view/FlutterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView$b;->a:Lio/flutter/view/FlutterNativeView;

    invoke-static {v0}, Lio/flutter/view/FlutterNativeView;->a(Lio/flutter/view/FlutterNativeView;)Lio/flutter/view/FlutterView;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView$b;->a:Lio/flutter/view/FlutterNativeView;

    invoke-static {v0}, Lio/flutter/view/FlutterNativeView;->b(Lio/flutter/view/FlutterNativeView;)Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView$b;->a:Lio/flutter/view/FlutterNativeView;

    invoke-static {v0}, Lio/flutter/view/FlutterNativeView;->b(Lio/flutter/view/FlutterNativeView;)Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/app/FlutterPluginRegistry;->onPreEngineRestart()V

    return-void
.end method
