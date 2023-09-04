.class Lio/flutter/embedding/android/a$a;
.super Ljava/lang/Object;
.source "FlutterActivityAndFragmentDelegate.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/a;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/a$a;->a:Lio/flutter/embedding/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlutterUiDisplayed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/a$a;->a:Lio/flutter/embedding/android/a;

    invoke-static {v0}, Lio/flutter/embedding/android/a;->a(Lio/flutter/embedding/android/a;)Lio/flutter/embedding/android/a$b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/a$b;->onFlutterUiDisplayed()V

    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/a$a;->a:Lio/flutter/embedding/android/a;

    invoke-static {v0}, Lio/flutter/embedding/android/a;->a(Lio/flutter/embedding/android/a;)Lio/flutter/embedding/android/a$b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/a$b;->onFlutterUiNoLongerDisplayed()V

    return-void
.end method
