.class public Lcom/combateafraude/faceauthenticator/output/failure/NetworkReason;
.super Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;
.source "NetworkReason.java"


# instance fields
.field private c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Falha ao conectar-se ao servidor"

    .line 1
    invoke-direct {p0, v0}, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/output/failure/NetworkReason;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/output/failure/NetworkReason;->c:Ljava/lang/Throwable;

    return-object v0
.end method
