.class public Lio/flutter/view/FlutterNativeView;
.super Ljava/lang/Object;
.source "FlutterNativeView.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/FlutterNativeView$b;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/app/FlutterPluginRegistry;

.field private final b:Lio/flutter/embedding/engine/dart/DartExecutor;

.field private c:Lio/flutter/view/FlutterView;

.field private final d:Lio/flutter/embedding/engine/FlutterJNI;

.field private final e:Landroid/content/Context;

.field private f:Z

.field private final g:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/flutter/view/FlutterNativeView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/flutter/view/FlutterNativeView$a;

    invoke-direct {v0, p0}, Lio/flutter/view/FlutterNativeView$a;-><init>(Lio/flutter/view/FlutterNativeView;)V

    iput-object v0, p0, Lio/flutter/view/FlutterNativeView;->g:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 4
    iput-object p1, p0, Lio/flutter/view/FlutterNativeView;->e:Landroid/content/Context;

    .line 5
    new-instance v1, Lio/flutter/app/FlutterPluginRegistry;

    invoke-direct {v1, p0, p1}, Lio/flutter/app/FlutterPluginRegistry;-><init>(Lio/flutter/view/FlutterNativeView;Landroid/content/Context;)V

    iput-object v1, p0, Lio/flutter/view/FlutterNativeView;->a:Lio/flutter/app/FlutterPluginRegistry;

    .line 6
    new-instance v1, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v1}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    iput-object v1, p0, Lio/flutter/view/FlutterNativeView;->d:Lio/flutter/embedding/engine/FlutterJNI;

    .line 7
    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 8
    new-instance v0, Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/flutter/embedding/engine/dart/DartExecutor;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lio/flutter/view/FlutterNativeView;->b:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 9
    new-instance p1, Lio/flutter/view/FlutterNativeView$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/flutter/view/FlutterNativeView$b;-><init>(Lio/flutter/view/FlutterNativeView;Lio/flutter/view/FlutterNativeView$a;)V

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    .line 10
    invoke-direct {p0, p0, p2}, Lio/flutter/view/FlutterNativeView;->c(Lio/flutter/view/FlutterNativeView;Z)V

    .line 11
    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->assertAttached()V

    return-void
.end method

.method static synthetic a(Lio/flutter/view/FlutterNativeView;)Lio/flutter/view/FlutterView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->c:Lio/flutter/view/FlutterView;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/view/FlutterNativeView;)Lio/flutter/app/FlutterPluginRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->a:Lio/flutter/app/FlutterPluginRegistry;

    return-object p0
.end method

.method private c(Lio/flutter/view/FlutterNativeView;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/flutter/view/FlutterNativeView;->d:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative(Z)V

    .line 2
    iget-object p1, p0, Lio/flutter/view/FlutterNativeView;->b:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->onAttachedToJNI()V

    return-void
.end method

.method public static getObservatoryUri()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/flutter/embedding/engine/FlutterJNI;->getObservatoryUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public assertAttached()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Platform view is not attached"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public attachViewAndActivity(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/flutter/view/FlutterNativeView;->c:Lio/flutter/view/FlutterView;

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->a:Lio/flutter/app/FlutterPluginRegistry;

    invoke-virtual {v0, p1, p2}, Lio/flutter/app/FlutterPluginRegistry;->attach(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V

    return-void
.end method

.method d()Lio/flutter/embedding/engine/FlutterJNI;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->d:Lio/flutter/embedding/engine/FlutterJNI;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->a:Lio/flutter/app/FlutterPluginRegistry;

    invoke-virtual {v0}, Lio/flutter/app/FlutterPluginRegistry;->destroy()V

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->b:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->onDetachedFromJNI()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/flutter/view/FlutterNativeView;->c:Lio/flutter/view/FlutterView;

    .line 4
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->d:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/view/FlutterNativeView;->g:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 5
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->d:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/flutter/view/FlutterNativeView;->f:Z

    return-void
.end method

.method public detachFromFlutterView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->a:Lio/flutter/app/FlutterPluginRegistry;

    invoke-virtual {v0}, Lio/flutter/app/FlutterPluginRegistry;->detach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/view/FlutterNativeView;->c:Lio/flutter/view/FlutterView;

    return-void
.end method

.method public getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->b:Lio/flutter/embedding/engine/dart/DartExecutor;

    return-object v0
.end method

.method public getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->a:Lio/flutter/app/FlutterPluginRegistry;

    return-object v0
.end method

.method public isApplicationRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/view/FlutterNativeView;->f:Z

    return v0
.end method

.method public isAttached()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->d:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    return v0
.end method

.method public runFromBundle(Lio/flutter/view/FlutterRunArguments;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lio/flutter/view/FlutterRunArguments;->entrypoint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->assertAttached()V

    .line 3
    iget-boolean v0, p0, Lio/flutter/view/FlutterNativeView;->f:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->d:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p1, Lio/flutter/view/FlutterRunArguments;->bundlePath:Ljava/lang/String;

    iget-object v2, p1, Lio/flutter/view/FlutterRunArguments;->entrypoint:Ljava/lang/String;

    iget-object p1, p1, Lio/flutter/view/FlutterRunArguments;->libraryPath:Ljava/lang/String;

    iget-object v3, p0, Lio/flutter/view/FlutterNativeView;->e:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v1, v2, p1, v3}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/flutter/view/FlutterNativeView;->f:Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "This Flutter engine instance is already running an application"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "An entrypoint must be specified"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->b:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FlutterView.send called on a detached view, channel="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlutterNativeView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->b:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->b:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    return-void
.end method
