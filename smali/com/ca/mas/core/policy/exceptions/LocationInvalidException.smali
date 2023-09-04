.class public Lcom/ca/mas/core/policy/exceptions/LocationInvalidException;
.super Lcom/ca/mas/core/error/MAGException;
.source "LocationInvalidException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x187cd

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/error/MAGException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const v0, 0x187cd

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/error/MAGException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const v0, 0x187cd

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/core/error/MAGException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const v0, 0x187cd

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/error/MAGException;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method
