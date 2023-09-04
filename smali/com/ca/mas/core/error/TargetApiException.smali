.class public Lcom/ca/mas/core/error/TargetApiException;
.super Ljava/lang/Exception;
.source "TargetApiException.java"


# instance fields
.field private final a:Lcom/ca/mas/foundation/MASResponse;


# direct methods
.method public constructor <init>(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/error/TargetApiException;->a:Lcom/ca/mas/foundation/MASResponse;

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/ca/mas/foundation/MASResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/error/TargetApiException;->a:Lcom/ca/mas/foundation/MASResponse;

    return-object v0
.end method
