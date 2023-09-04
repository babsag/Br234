.class public Lio/flutter/app/FlutterPluginRegistry;
.super Ljava/lang/Object;
.source "FlutterPluginRegistry.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;
.implements Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/app/FlutterPluginRegistry$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private c:Lio/flutter/view/FlutterNativeView;

.field private d:Lio/flutter/view/FlutterView;

.field private final e:Lio/flutter/plugin/platform/PlatformViewsController;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterEngine;Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->f:Ljava/util/Map;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->g:Ljava/util/List;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->h:Ljava/util/List;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->i:Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->j:Ljava/util/List;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->k:Ljava/util/List;

    .line 18
    iput-object p2, p0, Lio/flutter/app/FlutterPluginRegistry;->b:Landroid/content/Context;

    .line 19
    new-instance p1, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {p1}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->e:Lio/flutter/plugin/platform/PlatformViewsController;

    return-void
.end method

.method public constructor <init>(Lio/flutter/view/FlutterNativeView;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->f:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->g:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->h:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->i:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->j:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->k:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->c:Lio/flutter/view/FlutterNativeView;

    .line 9
    iput-object p2, p0, Lio/flutter/app/FlutterPluginRegistry;->b:Landroid/content/Context;

    .line 10
    new-instance p1, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {p1}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->e:Lio/flutter/plugin/platform/PlatformViewsController;

    return-void
.end method

.method static synthetic a(Lio/flutter/app/FlutterPluginRegistry;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/app/FlutterPluginRegistry;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/view/FlutterNativeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->c:Lio/flutter/view/FlutterNativeView;

    return-object p0
.end method

.method static synthetic e(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/view/FlutterView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->d:Lio/flutter/view/FlutterView;

    return-object p0
.end method

.method static synthetic f(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->e:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object p0
.end method

.method static synthetic g(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->j:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public attach(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->d:Lio/flutter/view/FlutterView;

    .line 2
    iput-object p2, p0, Lio/flutter/app/FlutterPluginRegistry;->a:Landroid/app/Activity;

    .line 3
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->e:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {p1}, Lio/flutter/view/FlutterView;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lio/flutter/plugin/platform/PlatformViewsController;->attach(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Lio/flutter/embedding/engine/dart/DartExecutor;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->e:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onDetachedFromJNI()V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->e:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detach()V

    .line 2
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->e:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onDetachedFromJNI()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->d:Lio/flutter/view/FlutterView;

    .line 4
    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->a:Landroid/app/Activity;

    return-void
.end method

.method public getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->e:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object v0
.end method

.method public hasPlugin(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    .line 2
    invoke-interface {v1, p1}, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;->onNewIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPreEngineRestart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->e:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onPreEngineRestart()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onUserLeaveHint()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;

    .line 2
    invoke-interface {v1}, Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;->onUserLeaveHint()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewDestroy(Lio/flutter/view/FlutterNativeView;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;

    .line 2
    invoke-interface {v2, p1}, Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;->onViewDestroy(Lio/flutter/view/FlutterNativeView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public registrarFor(Ljava/lang/String;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->f:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/flutter/app/FlutterPluginRegistry$a;

    invoke-direct {v0, p0, p1}, Lio/flutter/app/FlutterPluginRegistry$a;-><init>(Lio/flutter/app/FlutterPluginRegistry;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already in use"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
