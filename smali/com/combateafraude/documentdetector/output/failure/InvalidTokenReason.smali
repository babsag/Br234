.class public Lcom/combateafraude/documentdetector/output/failure/InvalidTokenReason;
.super Lcom/combateafraude/documentdetector/output/failure/SDKFailure;
.source "InvalidTokenReason.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Token inv\u00e1lido"

    .line 1
    invoke-direct {p0, v0}, Lcom/combateafraude/documentdetector/output/failure/SDKFailure;-><init>(Ljava/lang/String;)V

    return-void
.end method
