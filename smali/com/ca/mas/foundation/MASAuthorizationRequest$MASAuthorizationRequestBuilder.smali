.class public Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;
.super Ljava/lang/Object;
.source "MASAuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/MASAuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MASAuthorizationRequestBuilder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->c:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic d(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/ca/mas/foundation/MASAuthorizationRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASAuthorizationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ca/mas/foundation/MASAuthorizationRequest;-><init>(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;Lcom/ca/mas/foundation/MASAuthorizationRequest$a;)V

    return-object v0
.end method

.method public buildDefault()Lcom/ca/mas/foundation/MASAuthorizationRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/a;

    invoke-direct {v0}, Lcom/ca/mas/foundation/a;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/foundation/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/foundation/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/foundation/a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/ca/mas/foundation/a;->c()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->c:Landroid/net/Uri;

    .line 6
    invoke-virtual {v0}, Lcom/ca/mas/foundation/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/ca/mas/foundation/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->f:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/ca/mas/foundation/MASAuthorizationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ca/mas/foundation/MASAuthorizationRequest;-><init>(Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;Lcom/ca/mas/foundation/MASAuthorizationRequest$a;)V

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->a:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->b:Ljava/lang/String;

    return-void
.end method

.method public setRedirectUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->c:Landroid/net/Uri;

    return-void
.end method

.method public setResponseType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->d:Ljava/lang/String;

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->e:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->f:Ljava/lang/String;

    return-void
.end method
