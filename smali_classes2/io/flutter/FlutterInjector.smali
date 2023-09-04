.class public final Lio/flutter/FlutterInjector;
.super Ljava/lang/Object;
.source "FlutterInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/FlutterInjector$Builder;
    }
.end annotation


# static fields
.field private static a:Lio/flutter/FlutterInjector;

.field private static b:Z


# instance fields
.field private c:Z

.field private d:Lio/flutter/embedding/engine/loader/FlutterLoader;


# direct methods
.method private constructor <init>(ZLio/flutter/embedding/engine/loader/FlutterLoader;)V
    .locals 0
    .param p2    # Lio/flutter/embedding/engine/loader/FlutterLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lio/flutter/FlutterInjector;->c:Z

    .line 4
    iput-object p2, p0, Lio/flutter/FlutterInjector;->d:Lio/flutter/embedding/engine/loader/FlutterLoader;

    return-void
.end method

.method synthetic constructor <init>(ZLio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/FlutterInjector$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/FlutterInjector;-><init>(ZLio/flutter/embedding/engine/loader/FlutterLoader;)V

    return-void
.end method

.method public static instance()Lio/flutter/FlutterInjector;
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lio/flutter/FlutterInjector;->b:Z

    .line 2
    sget-object v0, Lio/flutter/FlutterInjector;->a:Lio/flutter/FlutterInjector;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/flutter/FlutterInjector$Builder;

    invoke-direct {v0}, Lio/flutter/FlutterInjector$Builder;-><init>()V

    invoke-virtual {v0}, Lio/flutter/FlutterInjector$Builder;->build()Lio/flutter/FlutterInjector;

    move-result-object v0

    sput-object v0, Lio/flutter/FlutterInjector;->a:Lio/flutter/FlutterInjector;

    .line 4
    :cond_0
    sget-object v0, Lio/flutter/FlutterInjector;->a:Lio/flutter/FlutterInjector;

    return-object v0
.end method

.method public static reset()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lio/flutter/FlutterInjector;->b:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lio/flutter/FlutterInjector;->a:Lio/flutter/FlutterInjector;

    return-void
.end method

.method public static setInstance(Lio/flutter/FlutterInjector;)V
    .locals 1
    .param p0    # Lio/flutter/FlutterInjector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-boolean v0, Lio/flutter/FlutterInjector;->b:Z

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lio/flutter/FlutterInjector;->a:Lio/flutter/FlutterInjector;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change the FlutterInjector instance once it\'s been read. If you\'re trying to dependency inject, be sure to do so at the beginning of the program"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/FlutterInjector;->d:Lio/flutter/embedding/engine/loader/FlutterLoader;

    return-object v0
.end method

.method public shouldLoadNative()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/FlutterInjector;->c:Z

    return v0
.end method
