.class public Lcom/ca/mas/core/error/MAGServerException;
.super Ljava/lang/Exception;
.source "MAGServerException.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private errorCode:I

.field private response:Lcom/ca/mas/foundation/MASResponse;

.field private status:I


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/error/MAGServerException;)V
    .locals 7

    .line 11
    invoke-virtual {p1}, Lcom/ca/mas/core/error/MAGServerException;->getResponse()Lcom/ca/mas/foundation/MASResponse;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ca/mas/core/error/MAGServerException;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/ca/mas/core/error/MAGServerException;->getStatus()I

    move-result v3

    invoke-virtual {p1}, Lcom/ca/mas/core/error/MAGServerException;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ca/mas/core/error/MAGServerException;-><init>(Lcom/ca/mas/foundation/MASResponse;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/foundation/MASResponse;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/error/MAGServerException;->response:Lcom/ca/mas/foundation/MASResponse;

    .line 3
    iput p2, p0, Lcom/ca/mas/core/error/MAGServerException;->errorCode:I

    .line 4
    iput p3, p0, Lcom/ca/mas/core/error/MAGServerException;->status:I

    .line 5
    iput-object p4, p0, Lcom/ca/mas/core/error/MAGServerException;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/foundation/MASResponse;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p5, p6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iput-object p1, p0, Lcom/ca/mas/core/error/MAGServerException;->response:Lcom/ca/mas/foundation/MASResponse;

    .line 8
    iput p2, p0, Lcom/ca/mas/core/error/MAGServerException;->errorCode:I

    .line 9
    iput p3, p0, Lcom/ca/mas/core/error/MAGServerException;->status:I

    .line 10
    iput-object p4, p0, Lcom/ca/mas/core/error/MAGServerException;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/error/MAGServerException;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/error/MAGServerException;->errorCode:I

    return v0
.end method

.method public getResponse()Lcom/ca/mas/foundation/MASResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/error/MAGServerException;->response:Lcom/ca/mas/foundation/MASResponse;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/error/MAGServerException;->status:I

    return v0
.end method
