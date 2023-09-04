.class public Lcom/combateafraude/faceauthenticator/output/failure/PermissionReason;
.super Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;
.source "PermissionReason.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u00e9 necess\u00e1ria para iniciar o SDK. Por favor, requisite-a ao seu usu\u00e1rio"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;-><init>(Ljava/lang/String;)V

    return-void
.end method
