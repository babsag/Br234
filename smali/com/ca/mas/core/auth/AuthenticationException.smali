.class public Lcom/ca/mas/core/auth/AuthenticationException;
.super Lcom/ca/mas/core/error/MAGServerException;
.source "AuthenticationException.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final INVALID_RESOURCE_OWNER_SUFFIX:Ljava/lang/String; = "202"


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/error/MAGServerException;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ca/mas/core/error/MAGServerException;-><init>(Lcom/ca/mas/core/error/MAGServerException;)V

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/foundation/MASResponse;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/ca/mas/core/error/MAGServerException;-><init>(Lcom/ca/mas/foundation/MASResponse;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/foundation/MASResponse;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/ca/mas/core/error/MAGServerException;-><init>(Lcom/ca/mas/foundation/MASResponse;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
