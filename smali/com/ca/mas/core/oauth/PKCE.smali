.class public Lcom/ca/mas/core/oauth/PKCE;
.super Ljava/lang/Object;
.source "PKCE.java"


# instance fields
.field public codeChallenge:Ljava/lang/String;

.field public codeChallengeMethod:Ljava/lang/String;

.field public codeVerifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ca/mas/core/oauth/PKCE;->codeChallenge:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/ca/mas/core/oauth/PKCE;->codeChallengeMethod:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ca/mas/core/oauth/PKCE;->codeVerifier:Ljava/lang/String;

    return-void
.end method
