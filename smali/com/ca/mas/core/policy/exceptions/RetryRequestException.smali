.class public abstract Lcom/ca/mas/core/policy/exceptions/RetryRequestException;
.super Lcom/ca/mas/core/error/MAGStateException;
.source "RetryRequestException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/error/MAGStateException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/error/MAGStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ca/mas/core/error/MAGStateException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract recover(Lcom/ca/mas/core/context/MssoContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
