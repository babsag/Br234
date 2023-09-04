.class public Lcom/ca/mas/foundation/MASAuthorizationResponse;
.super Ljava/lang/Object;
.source "MASAuthorizationResponse.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthorizationResponse;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ca/mas/foundation/MASAuthorizationResponse;->b:Ljava/lang/String;

    return-void
.end method

.method public static fromUri(Landroid/net/Uri;)Lcom/ca/mas/foundation/MASAuthorizationResponse;
    .locals 3

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASAuthorizationResponse;

    const-string v1, "code"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/ca/mas/foundation/MASAuthorizationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAuthorizationCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthorizationResponse;->b:Ljava/lang/String;

    return-object v0
.end method
