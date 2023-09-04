.class public Lnet/nfet/flutter/printing/PrintingPlugin;
.super Ljava/lang/Object;
.source "PrintingPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lio/flutter/plugin/common/MethodChannel;

.field private c:Lnet/nfet/flutter/printing/PrintingHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_activity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->a:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lnet/nfet/flutter/printing/PrintingHandler;

    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->a:Landroid/app/Activity;

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    invoke-direct {p1, v0, v1}, Lnet/nfet/flutter/printing/PrintingHandler;-><init>(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel;)V

    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->c:Lnet/nfet/flutter/printing/PrintingHandler;

    .line 4
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    :cond_0
    return-void
.end method

.method private b(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messenger"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "net.nfet.printing"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    iget-object p1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->a:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lnet/nfet/flutter/printing/PrintingHandler;

    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->a:Landroid/app/Activity;

    iget-object v1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    invoke-direct {p1, v0, v1}, Lnet/nfet/flutter/printing/PrintingHandler;-><init>(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel;)V

    iput-object p1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->c:Lnet/nfet/flutter/printing/PrintingHandler;

    .line 4
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    :cond_0
    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lnet/nfet/flutter/printing/PrintingPlugin;

    invoke-direct {v1}, Lnet/nfet/flutter/printing/PrintingPlugin;-><init>()V

    .line 3
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/nfet/flutter/printing/PrintingPlugin;->b(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 4
    invoke-direct {v1, v0}, Lnet/nfet/flutter/printing/PrintingPlugin;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/nfet/flutter/printing/PrintingPlugin;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/nfet/flutter/printing/PrintingPlugin;->b(Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 2
    iput-object v1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->a:Landroid/app/Activity;

    .line 3
    iput-object v1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->c:Lnet/nfet/flutter/printing/PrintingHandler;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/nfet/flutter/printing/PrintingPlugin;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 2
    iput-object v0, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 3
    iput-object v0, p0, Lnet/nfet/flutter/printing/PrintingPlugin;->c:Lnet/nfet/flutter/printing/PrintingHandler;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/nfet/flutter/printing/PrintingPlugin;->a(Landroid/app/Activity;)V

    return-void
.end method
