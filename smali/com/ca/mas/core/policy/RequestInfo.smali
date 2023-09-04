.class public Lcom/ca/mas/core/policy/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# instance fields
.field private final a:Lcom/ca/mas/core/request/MAGInternalRequest;

.field private b:I

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/foundation/MASRequest;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ca/mas/core/policy/RequestInfo;->b:I

    const-string v0, "request"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/ca/mas/core/request/MAGInternalRequest;

    invoke-direct {v0, p1, p2}, Lcom/ca/mas/core/request/MAGInternalRequest;-><init>(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/foundation/MASRequest;)V

    iput-object v0, p0, Lcom/ca/mas/core/policy/RequestInfo;->a:Lcom/ca/mas/core/request/MAGInternalRequest;

    .line 5
    iput-object p3, p0, Lcom/ca/mas/core/policy/RequestInfo;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/RequestInfo;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNumAttempts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/policy/RequestInfo;->b:I

    return v0
.end method

.method public getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/RequestInfo;->a:Lcom/ca/mas/core/request/MAGInternalRequest;

    return-object v0
.end method

.method public incrementNumAttempts()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/policy/RequestInfo;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ca/mas/core/policy/RequestInfo;->b:I

    return-void
.end method
