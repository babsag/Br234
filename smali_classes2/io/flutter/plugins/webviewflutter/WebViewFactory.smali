.class public final Lio/flutter/plugins/webviewflutter/WebViewFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "WebViewFactory.java"


# instance fields
.field private final b:Lio/flutter/plugin/common/BinaryMessenger;

.field private final c:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messenger",
            "containerView"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/WebViewFactory;->b:Lio/flutter/plugin/common/BinaryMessenger;

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/WebViewFactory;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "args"
        }
    .end annotation

    .line 1
    move-object v4, p3

    check-cast v4, Ljava/util/Map;

    .line 2
    new-instance p3, Lio/flutter/plugins/webviewflutter/FlutterWebView;

    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/WebViewFactory;->b:Lio/flutter/plugin/common/BinaryMessenger;

    iget-object v5, p0, Lio/flutter/plugins/webviewflutter/WebViewFactory;->c:Landroid/view/View;

    move-object v0, p3

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lio/flutter/plugins/webviewflutter/FlutterWebView;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/Map;Landroid/view/View;)V

    return-object p3
.end method
