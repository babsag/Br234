.class public Lcom/combateafraude/faceauthenticator/output/failure/ServerReason;
.super Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;
.source "ServerReason.java"


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Lcom/combateafraude/faceauthenticator/controller/server/model/response/ServerUnsuccessful;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ServerUnsuccessful;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/combateafraude/faceauthenticator/output/failure/ServerReason;->c:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/output/failure/ServerReason;->c:I

    return v0
.end method
