.class Lio/flutter/embedding/android/FlutterSplashView$a;
.super Ljava/lang/Object;
.source "FlutterSplashView.java"

# interfaces
.implements Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterSplashView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/FlutterSplashView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterSplashView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView$a;->a:Lio/flutter/embedding/android/FlutterSplashView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlutterEngineAttachedToFlutterView(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/FlutterEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView$a;->a:Lio/flutter/embedding/android/FlutterSplashView;

    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSplashView;->a(Lio/flutter/embedding/android/FlutterSplashView;)Lio/flutter/embedding/android/FlutterView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/flutter/embedding/android/FlutterView;->removeFlutterEngineAttachmentListener(Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;)V

    .line 2
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSplashView$a;->a:Lio/flutter/embedding/android/FlutterSplashView;

    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSplashView;->a(Lio/flutter/embedding/android/FlutterSplashView;)Lio/flutter/embedding/android/FlutterView;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSplashView$a;->a:Lio/flutter/embedding/android/FlutterSplashView;

    invoke-static {v1}, Lio/flutter/embedding/android/FlutterSplashView;->b(Lio/flutter/embedding/android/FlutterSplashView;)Lio/flutter/embedding/android/SplashScreen;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/flutter/embedding/android/FlutterSplashView;->g(Lio/flutter/embedding/android/FlutterView;Lio/flutter/embedding/android/SplashScreen;)V

    return-void
.end method

.method public onFlutterEngineDetachedFromFlutterView()V
    .locals 0

    return-void
.end method
