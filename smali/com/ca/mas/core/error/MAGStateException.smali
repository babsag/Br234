.class public Lcom/ca/mas/core/error/MAGStateException;
.super Lcom/ca/mas/core/error/MAGException;
.source "MAGStateException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/error/MAGException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/error/MAGException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/core/error/MAGException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/error/MAGException;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method
