.class public Lio/flutter/embedding/engine/systemchannels/RestorationChannel;
.super Ljava/lang/Object;
.source "RestorationChannel.java"


# instance fields
.field private a:[B

.field private b:Lio/flutter/plugin/common/MethodChannel;

.field private c:Lio/flutter/plugin/common/MethodChannel$Result;

.field private d:Z

.field private e:Z

.field private final f:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

.field public final waitForRestorationData:Z


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;Z)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/dart/DartExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    sget-object v1, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    const-string v2, "flutter/restoration"

    invoke-direct {v0, p1, v2, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    invoke-direct {p0, v0, p2}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;-><init>(Lio/flutter/plugin/common/MethodChannel;Z)V

    return-void
.end method

.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;Z)V
    .locals 1
    .param p2    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->d:Z

    .line 4
    iput-boolean v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->e:Z

    .line 5
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$b;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$b;-><init>(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->f:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 6
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 7
    iput-boolean p2, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->waitForRestorationData:Z

    .line 8
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->a:[B

    return-object p0
.end method

.method static synthetic b(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->a:[B

    return-object p1
.end method

.method static synthetic c(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->e:Z

    return p1
.end method

.method static synthetic d(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->d:Z

    return p0
.end method

.method static synthetic e(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;[B)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->g([B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;Lio/flutter/plugin/common/MethodChannel$Result;)Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object p1
.end method

.method private g([B)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->a:[B

    return-void
.end method

.method public getRestorationData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->a:[B

    return-object v0
.end method

.method public setRestorationData([B)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->d:Z

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->g([B)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 5
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->a:[B

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->e:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 8
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->g([B)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$a;

    invoke-direct {v2, p0, p1}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$a;-><init>(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;[B)V

    const-string p1, "push"

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    .line 10
    :cond_1
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->a:[B

    :goto_0
    return-void
.end method
