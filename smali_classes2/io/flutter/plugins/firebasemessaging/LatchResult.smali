.class public Lio/flutter/plugins/firebasemessaging/LatchResult;
.super Ljava/lang/Object;
.source "LatchResult.java"


# instance fields
.field private a:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "latch"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/plugins/firebasemessaging/LatchResult$a;

    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/firebasemessaging/LatchResult$a;-><init>(Lio/flutter/plugins/firebasemessaging/LatchResult;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v0, p0, Lio/flutter/plugins/firebasemessaging/LatchResult;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public getResult()Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebasemessaging/LatchResult;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object v0
.end method
