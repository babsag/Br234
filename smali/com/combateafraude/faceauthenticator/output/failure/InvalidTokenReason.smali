.class public Lcom/combateafraude/faceauthenticator/output/failure/InvalidTokenReason;
.super Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;
.source "InvalidTokenReason.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Token inv\u00e1lido"

    .line 1
    invoke-direct {p0, v0}, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;-><init>(Ljava/lang/String;)V

    return-void
.end method
