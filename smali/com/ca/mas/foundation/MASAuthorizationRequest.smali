.class public Lcom/ca/mas/foundation/MASAuthorizationRequest;
.super Ljava/lang/Object;
.source "MASAuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->a(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->b(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->c(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->c:Landroid/net/Uri;

    .line 6
    invoke-static {p1}, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->d(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->e(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->f(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;Lcom/ca/mas/foundation/MASAuthorizationRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/MASAuthorizationRequest;-><init>(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest;->f:Ljava/lang/String;

    return-object v0
.end method
