.class Lio/flutter/view/FlutterView$c;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/plugin/common/ActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/FlutterNativeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/PlatformPlugin;

.field final synthetic b:Lio/flutter/view/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/view/FlutterView;Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/FlutterView$c;->b:Lio/flutter/view/FlutterView;

    iput-object p2, p0, Lio/flutter/view/FlutterView$c;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/FlutterView$c;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    return-void
.end method
