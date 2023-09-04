.class public final Lio/flutter/FlutterInjector$Builder;
.super Ljava/lang/Object;
.source "FlutterInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/FlutterInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Lio/flutter/embedding/engine/loader/FlutterLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/flutter/FlutterInjector$Builder;->a:Z

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/FlutterInjector$Builder;->b:Lio/flutter/embedding/engine/loader/FlutterLoader;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-direct {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;-><init>()V

    iput-object v0, p0, Lio/flutter/FlutterInjector$Builder;->b:Lio/flutter/embedding/engine/loader/FlutterLoader;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/FlutterInjector;
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/flutter/FlutterInjector$Builder;->a()V

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should load native is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/flutter/FlutterInjector$Builder;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lio/flutter/FlutterInjector;

    iget-boolean v1, p0, Lio/flutter/FlutterInjector$Builder;->a:Z

    iget-object v2, p0, Lio/flutter/FlutterInjector$Builder;->b:Lio/flutter/embedding/engine/loader/FlutterLoader;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/FlutterInjector;-><init>(ZLio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/FlutterInjector$a;)V

    return-object v0
.end method

.method public setFlutterLoader(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/FlutterInjector$Builder;
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/loader/FlutterLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder;->b:Lio/flutter/embedding/engine/loader/FlutterLoader;

    return-object p0
.end method

.method public setShouldLoadNative(Z)Lio/flutter/FlutterInjector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/FlutterInjector$Builder;->a:Z

    return-object p0
.end method
