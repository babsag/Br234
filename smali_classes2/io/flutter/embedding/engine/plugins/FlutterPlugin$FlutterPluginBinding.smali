.class public Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
.super Ljava/lang/Object;
.source "FlutterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlutterPluginBinding"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/flutter/embedding/engine/FlutterEngine;

.field private final c:Lio/flutter/plugin/common/BinaryMessenger;

.field private final d:Lio/flutter/view/TextureRegistry;

.field private final e:Lio/flutter/plugin/platform/PlatformViewRegistry;

.field private final f:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/FlutterEngine;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/view/TextureRegistry;Lio/flutter/plugin/platform/PlatformViewRegistry;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/FlutterEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugin/common/BinaryMessenger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/flutter/view/TextureRegistry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/flutter/plugin/platform/PlatformViewRegistry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->b:Lio/flutter/embedding/engine/FlutterEngine;

    .line 4
    iput-object p3, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->c:Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    iput-object p4, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->d:Lio/flutter/view/TextureRegistry;

    .line 6
    iput-object p5, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->e:Lio/flutter/plugin/platform/PlatformViewRegistry;

    .line 7
    iput-object p6, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->f:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->c:Lio/flutter/plugin/common/BinaryMessenger;

    return-object v0
.end method

.method public getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->f:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    return-object v0
.end method

.method public getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->b:Lio/flutter/embedding/engine/FlutterEngine;

    return-object v0
.end method

.method public getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->e:Lio/flutter/plugin/platform/PlatformViewRegistry;

    return-object v0
.end method

.method public getTextureRegistry()Lio/flutter/view/TextureRegistry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->d:Lio/flutter/view/TextureRegistry;

    return-object v0
.end method
